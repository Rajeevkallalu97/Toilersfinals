//
//  testViewController.swift
//  Toilers
//
//  Created by Sai rajeev Kallalu on 28/10/19.
//  Copyright © 2019 Sai rajeev Kallalu. All rights reserved.
//

import UIKit
import SAPFoundation
import SAPFioriFlows
import SAPOData
import SAPCommon
import SAPFiori

struct postStruct{
    let id : String!
    let name : String!
    
}


class testViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
     func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        print("\(entities.count)")
        return self.entities.count
        
    }
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = "\(entities[indexPath.row].id!)"
        return cell!
    }
   
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
                //AlertHelper.displayAlert(with: NSLocalizedString("keyErrorLoadingData", value: "Loading data failed!", comment: "XTIT: Title of loading data error pop up."), error: error, viewController: self)
                //self.logger.error("Could not update table. Error: \(error)", error: error)
                return
            }
            DispatchQueue.main.async {
                self.tableView.reloadData()
                //self.logger.info("Table updated successfully!")
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
   
    
    
    @IBOutlet weak var testLabel: UILabel!
 
   
    
    @IBAction func testButton(_ sender: Any) {
       
        self.updateTable()
        
        
        //print(entities[0].id)
    }
    
    
    
        
    
    
 
    

}
