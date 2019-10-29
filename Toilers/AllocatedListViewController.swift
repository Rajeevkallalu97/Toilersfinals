//
//  AllocatedListViewController.swift
//  Toilers
//
//  Created by Sai rajeev Kallalu on 29/10/19.
//  Copyright © 2019 Sai rajeev Kallalu. All rights reserved.
//

import UIKit
import SAPFiori
import SAPFoundation
import SAPFioriFlows
import SAPOData
import SAPCommon
class AllocatedListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var myIndex = 0
    
    @IBOutlet weak var tableView: UITableView!
    let supervisor = HomePageViewController()
    public var loadEntitiesBlock: ((_ completionHandler: @escaping ([AllocatedListType]?, Error?) -> Void) -> Void)?
    var entities: [AllocatedListType] = [AllocatedListType]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        supervisor.getAppConfig()
        supervisor.onboardOrRestore()
        let oDataProvider = OnlineODataProvider(serviceName: "InspectproService", serviceRoot: supervisor.serviceURL, sapURLSession: supervisor.myContext.sapURLSession)
        oDataProvider.serviceOptions.checkVersion = false
        let supervisor = InspectproService(provider: oDataProvider)
        
        func fetchAllocatedList(_ completionHandler: @escaping ([AllocatedListType]?, Error?) -> Void) {
            // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
            let query = DataQuery().selectAll().top(20)
            do {
                supervisor.fetchAllocatedList(matching: query, completionHandler: completionHandler)
            }
        }
        loadEntitiesBlock = fetchAllocatedList
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "AllocatedDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is AllocatedDetailViewController
        {
            let vc = segue.destination as? AllocatedDetailViewController
            vc?.myIndex = entities[myIndex].id!
        }
    }
    
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        print("\(entities.count)")
        return self.entities.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil{
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        cell?.detailTextLabel?.text = "\(entities[indexPath.row].id!)"
        cell?.textLabel?.text = "\(entities[indexPath.row].name!)"
        
        return cell!
    }
    
    
    func updateTable() {
        // self.showFioriLoadingIndicator()
        print(entities.count)
        DispatchQueue.global().async {
            self.loadData {
                //self.hideFioriLoadingIndicator()
            }
        }
    }
    
    private func loadData(completionHandler: @escaping () -> Void) {
        self.requestEntities { error in
            defer {
                completionHandler()
            }
            if let error = error {
                return
            }
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    
    func requestEntities(completionHandler: @escaping (Error?) -> Void) {
        self.loadEntitiesBlock!() { entities, error in
            if let error = error {
                completionHandler(error)
                return
            }
            self.entities = entities!
            completionHandler(nil)
            print(entities?.count)
        }
    }
    
    @IBAction func loadData(_ sender: Any) {
        
        self.updateTable()
    }
    
}
