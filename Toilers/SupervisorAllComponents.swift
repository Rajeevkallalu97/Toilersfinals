//
//  SupervisorHomeViewController.swift
//  Toilers
//
//  Created by Sai rajeev Kallalu on 15/10/19.
//  Copyright © 2019 Sai rajeev Kallalu. All rights reserved.
//

import UIKit
import SAPFoundation
import SAPFioriFlows
import SAPOData
import SAPCommon


class SupervisorAllComponents: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
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
    
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   /* func loginSupervisor(_ serviceRoot: URL, _ urlSession: SAPURLSession) {
        let oDataProvider = OnlineODataProvider(serviceName: "InspectproService", serviceRoot: serviceRoot, sapURLSession: urlSession)
        oDataProvider.serviceOptions.checkVersion = false
        let supervisor = InspectproService(provider: oDataProvider)
        
        
        let queryId = DataQuery()
            .selectAll().top(20)
        
        supervisor.fetchAllComponents(matching: queryId) { userId, error in
            let userId = userId
            print("here")
            if let list = userId {
            for i in 0..<list.count{
                    let a = userId?[i].id as! String
                    let b = userId?[i].name as! String
                  //  self.posts.insert(postStruct(id: a, name: b), at: i)
                   // print(self.posts[i].id!)
                    
                }
              
            }
            
            }
        
    }*/

}
