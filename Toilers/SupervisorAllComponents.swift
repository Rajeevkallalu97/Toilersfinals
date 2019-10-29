//
//  SupervisorHomeViewController.swift
//  Toilers
//
//  Created by Sai rajeev Kallalu on 15/10/19.
//  Copyright © 2019 Sai rajeev Kallalu. All rights reserved.
//

import UIKit
import SAPFiori
import SAPFoundation
import SAPFioriFlows
import SAPOData
import SAPCommon


class SupervisorAllComponents: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var myIndex = 0
    
    let supervisor = HomePageViewController()
    public var loadEntitiesBlock: ((_ completionHandler: @escaping ([AllComponentsType]?, Error?) -> Void) -> Void)?
    var entities: [AllComponentsType] = [AllComponentsType]()
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        supervisor.getAppConfig()
        supervisor.onboardOrRestore()
        let oDataProvider = OnlineODataProvider(serviceName: "InspectproService", serviceRoot: supervisor.serviceURL, sapURLSession: supervisor.myContext.sapURLSession)
        oDataProvider.serviceOptions.checkVersion = false
        let supervisor = InspectproService(provider: oDataProvider)
        
        func fetchAllComponents(_ completionHandler: @escaping ([AllComponentsType]?, Error?) -> Void) {
            // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
            let query = DataQuery().selectAll().top(20)
            do {
                supervisor.fetchAllComponents(matching: query, completionHandler: completionHandler)
            }
        }
        loadEntitiesBlock = fetchAllComponents
        
        
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "DetailView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is AllCompDetailViewController
        {
            let vc = segue.destination as? AllCompDetailViewController
            vc?.myIndex = entities[myIndex].id!
        }
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
