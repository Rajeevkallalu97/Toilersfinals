//
//  InspectedListViewController.swift
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
class InspectedListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var myIndex = 0
    
    
    let supervisor = HomePageViewController()
    public var loadEntitiesBlock: ((_ completionHandler: @escaping ([InspectedListType]?, Error?) -> Void) -> Void)?
    var entities: [InspectedListType] = [InspectedListType]()
    override func viewDidLoad() {
        super.viewDidLoad()
        supervisor.getAppConfig()
        supervisor.onboardOrRestore()
        let oDataProvider = OnlineODataProvider(serviceName: "InspectproService", serviceRoot: supervisor.serviceURL, sapURLSession: supervisor.myContext.sapURLSession)
        oDataProvider.serviceOptions.checkVersion = false
        let supervisor = InspectproService(provider: oDataProvider)
        
        func fetchInspectedList(_ completionHandler: @escaping ([InspectedListType]?, Error?) -> Void) {
            // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
            let query = DataQuery().selectAll().top(20)
            do {
                supervisor.fetchInspectedList(matching: query, completionHandler: completionHandler)
            }
        }
        loadEntitiesBlock = fetchInspectedList
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var tableView: UITableView!
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        print("\(entities.count)")
        return self.entities.count
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "InspectedDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is InspectedDetailViewController
        {
            let vc = segue.destination as? InspectedDetailViewController
            vc?.myIndex = entities[myIndex].id!
        }
    }
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil{
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        
        
        cell!.accessoryType = .checkmark
        if (entities[indexPath.row].taskCompleted?.contains("YES"))!
            {
                print("Found")
                cell!.accessoryType = .checkmark
                
            }
        else{
            cell!.accessoryType = .none
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
