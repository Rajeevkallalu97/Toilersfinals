//
//  SupervisorHomeViewController.swift
//  Toilers
//
//  Created by Sai rajeev Kallalu on 15/10/19.
//  Copyright © 2019 Sai rajeev Kallalu. All rights reserved.
//

import UIKit

class SupervisorHomeViewController: UIViewController {

    let superHome = HomePageViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        superHome.getAppConfig()
        superHome.onboardOrRestore()
      
    }
    
    
    
    //print all components
    private func loginSupervisor(_ serviceRoot: URL, _ urlSession: SAPURLSession) {
        let oDataProvider = OnlineODataProvider(serviceName: "InspectproService", serviceRoot: serviceRoot, sapURLSession: urlSession)
        oDataProvider.serviceOptions.checkVersion = false
        let supervisor = InspectproService(provider: oDataProvider)
        
        
        
        let queryId = DataQuery()
            .selectAll().top(20)
        
        
        supervisor.fetchAllComponents(matching: queryId) { userId, error in
            let userId = userId
            if let list = userId {
                for i in 0..<list.count{
                    print(userId?[i].name)
                }
            }
        }
        
    }
    
    
    
    //new entity allocation
    private func loginSupervisor1(_ serviceRoot: URL, _ urlSession: SAPURLSession) {
        let oDataProvider = OnlineODataProvider(serviceName: "InspectproService", serviceRoot: serviceRoot, sapURLSession: urlSession)
        oDataProvider.serviceOptions.checkVersion = false
        //let supervisor = InspectproService(provider: oDataProvider)
        
        let newEntity = AllComponentsType()
        newEntity.id = "rajeev"
        print("success")
        
        
    }

}
