//
//  BarcodeViewController.swift
//  Toilers
//
//  Created by Sai rajeev Kallalu on 1/11/19.
//  Copyright © 2019 Sai rajeev Kallalu. All rights reserved.
//

import UIKit
import SAPFoundation
import SAPFioriFlows
import SAPOData
import SAPCommon
class BarcodeViewController: UIViewController {
    let barcode = HomePageViewController()
    @IBOutlet weak var barCode: UITextField!
    
    var id1 = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
            barcode.getAppConfig()
        barcode.onboardOrRestore()
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is BarcodeDetailViewController
        {
            let vc = segue.destination as? BarcodeDetailViewController
            vc?.myIndex = barCode.text!
            vc?.id = id1
        }
        
    }

    @IBAction func submit(_ sender: Any) {
    
    self.loginInspector(barcode.serviceURL, barcode.myContext.sapURLSession)
    
    }
    
    
    private func loginInspector(_ serviceRoot: URL, _ urlSession: SAPURLSession) {
        let oDataProvider = OnlineODataProvider(serviceName: "InspectproService", serviceRoot: serviceRoot, sapURLSession: urlSession)
        oDataProvider.serviceOptions.checkVersion = false
        let inspector = InspectproService(provider: oDataProvider)
        
        let queryId = DataQuery()
            .select(AllComponentsType.barCode)
            .where(AllComponentsType.barCode==(barCode.text!))
        
       
        
        inspector.fetchAllComponents(matching: queryId) { userId, error in
            let userId = userId
            if userId!.count>0 {
            self.performSegue(withIdentifier: "barcode", sender: self)
                
            }
            else{
                Alert.showIdInvalid(on: self)
                print("invalid id")
            }
        }
    }

    
    
}
