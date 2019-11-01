//
//  AllCompDetailViewController.swift
//  Toilers
//
//  Created by Sai rajeev Kallalu on 29/10/19.
//  Copyright © 2019 Sai rajeev Kallalu. All rights reserved.
//
import UIKit
import SAPFoundation
import SAPFioriFlows
import SAPOData
import SAPCommon

class AllCompDetailViewController: UIViewController {
        var myIndex = ""
    let AllDetail = HomePageViewController()
    @IBOutlet weak var Id: UILabel!
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var SystemName: UILabel!
    @IBOutlet weak var Make: UILabel!
    @IBOutlet weak var Model: UILabel!
    @IBOutlet weak var PartNumber: UILabel!
    
    @IBOutlet weak var SerialNumber: UILabel!
    
    @IBOutlet weak var Compartment: UILabel!
    
    
    @IBOutlet weak var Condition: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AllDetail.getAppConfig()
        AllDetail.onboardOrRestore()
        
       
       
    }
  
    @IBAction func logOut(_ sender: Any) {
        let dashboardVC = navigationController!.viewControllers.filter { $0 is HomePageViewController }.first!
        navigationController!.popToViewController(dashboardVC, animated: true)
    }
    @IBAction func getDetails(_ sender: Any) {
         loginSupervisor(AllDetail.serviceURL, AllDetail.myContext.sapURLSession)
    }
    private func loginSupervisor(_ serviceRoot: URL, _ urlSession: SAPURLSession) {
        let oDataProvider = OnlineODataProvider(serviceName: "InspectproService", serviceRoot: serviceRoot, sapURLSession: urlSession)
        oDataProvider.serviceOptions.checkVersion = false
        let supervisor = InspectproService(provider: oDataProvider)
        
        let queryId = DataQuery()
            .select()
            .where(AllComponentsType.id==(myIndex))
        
       
        supervisor.fetchAllComponents(matching: queryId) { userId, error in
            let userId = userId
            if  userId!.count>0 {
                self.Id.text = userId?[0].id
                self.Name.text = userId?[0].name
                self.SystemName.text = userId?[0].systemName
                self.Make.text = userId?[0].make
                self.Model.text = userId?[0].model
                self.PartNumber.text = userId?[0].partNumber
                self.SerialNumber.text = userId?[0].serialNumber
                self.Compartment.text = userId?[0].compartment
                self.Condition.text = userId?[0].condition
                }
                
            }
        
        }
    }



