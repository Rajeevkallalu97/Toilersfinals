//
//  InspectorSpecificViewController.swift
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

class InspectorSpecificViewController: UIViewController {
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

    @IBOutlet weak var InspectorId: UILabel!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AllDetail.getAppConfig()
        AllDetail.onboardOrRestore()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func getData(_ sender: Any) {
        loginSupervisor(AllDetail.serviceURL, AllDetail.myContext.sapURLSession)
    }
    
    
    private func loginSupervisor(_ serviceRoot: URL, _ urlSession: SAPURLSession) {
        let oDataProvider = OnlineODataProvider(serviceName: "InspectproService", serviceRoot: serviceRoot, sapURLSession: urlSession)
        oDataProvider.serviceOptions.checkVersion = false
        let supervisor = InspectproService(provider: oDataProvider)
        
        let queryId = DataQuery()
            .select()
            .where(AllocatedListType.id==(myIndex))
        
        
        supervisor.fetchAllocatedList(matching: queryId) { userId, error in
            let userId = userId
            if  userId!.count>0 {
                self.Id.text = userId?[0].id
                self.InspectorId.text = userId?[0].name
                self.SystemName.text = userId?[0].systemName
                self.Make.text = userId?[0].make
                self.Model.text = userId?[0].model
                self.PartNumber.text = userId?[0].partNumber
                self.SerialNumber.text = userId?[0].serialNumber
                self.Compartment.text = userId?[0].compartment
               
                self.Name.text = userId?[0].inspectorID
                
                
            }
            
        }
        
    }
   
}
