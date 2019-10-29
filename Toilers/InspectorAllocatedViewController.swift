//
//  InspectorAllocatedViewController.swift
//  Toilers
//
//  Created by Sai rajeev Kallalu on 28/10/19.
//  Copyright © 2019 Sai rajeev Kallalu. All rights reserved.
//


import SAPFiori
import UIKit
import SAPFoundation
import SAPFioriFlows
import SAPOData
import SAPCommon


class InspectorAllocatedViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    let test = HomePageViewController()
   
  
    public var loadEntitiesBlock: ((_ completionHandler: @escaping ([AllocatedListType]?, Error?) -> Void) -> Void)?
    var entities: [AllocatedListType] = [AllocatedListType]()
    
    //var vc: InspectorViewController = InspectorViewController(nibName: nil, bundle: nil)
  var id = String()
    
    override func viewDidLoad() {
        test.getAppConfig()
        test.onboardOrRestore()
        let oDataProvider = OnlineODataProvider(serviceName: "InspectproService", serviceRoot: test.serviceURL, sapURLSession: test.myContext.sapURLSession)
        oDataProvider.serviceOptions.checkVersion = false
        let supervisor = InspectproService(provider: oDataProvider)
        
        func fetchAllocatedList(_ completionHandler: @escaping ([AllocatedListType]?, Error?) -> Void) {
            // Only request the first 20 values. If you want to modify the requested entities, you can do it here.
            let query = DataQuery().selectAll().where(AllocatedListType.inspectorID==(id))
            //let query = DataQuery().selectAll().top(20)
            do {
                supervisor.fetchAllocatedList(matching: query, completionHandler: completionHandler)
            }
        }
        loadEntitiesBlock = fetchAllocatedList
        
    }
   
    @IBAction func loadData(_ sender: Any) {
        self.updateTable()
    }
    @IBOutlet weak var tableView: UITableView!
    
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
    
   

}
