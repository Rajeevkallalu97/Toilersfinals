//
//  ViewController.swift
//  Toilers
//
//  Created by Sai rajeev Kallalu on 12/10/19.
//  Copyright © 2019 Sai rajeev Kallalu. All rights reserved.
//

import UIKit
import SAPFoundation
import SAPFioriFlows
import SAPOData
import SAPCommon


class SupervisorViewController: UIViewController {
    
    let supervisor = HomePageViewController()
    
    @IBOutlet weak var ID: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    
   
    
    //segue function
  func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SupervisorHome" {
            segue.destination as! SupervisorHomeViewController
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        supervisor.getAppConfig()
        supervisor.onboardOrRestore()
      
    }
    
    
    
    
    @IBAction func pressed(_ sender: Any) {
        
        loginSupervisor(supervisor.serviceURL, supervisor.myContext.sapURLSession)
        
    
    }
    
  
    private func loginSupervisor(_ serviceRoot: URL, _ urlSession: SAPURLSession) {
        let oDataProvider = OnlineODataProvider(serviceName: "InspectproService", serviceRoot: serviceRoot, sapURLSession: urlSession)
        oDataProvider.serviceOptions.checkVersion = false
        let supervisor = InspectproService(provider: oDataProvider)
        
        let queryId = DataQuery()
            .select(SupervisorType.id)
            .where(SupervisorType.id==(ID.text!))
        
        let queryPassword = DataQuery()
            .select(SupervisorType.password)
            .where(SupervisorType.id==(ID.text!))
        
        supervisor.fetchSupervisor(matching: queryId) { userId, error in
            let userId = userId
            if userId!.count>0 {
                supervisor.fetchSupervisor(matching: queryPassword) { userPassword, error in
                    let userPassword = userPassword
                    if self.Password.text == userPassword?[0].password! {
                        self.performSegue(withIdentifier: "SupervisorHome", sender: nil)
                    }
                    else{
                       Alert.showPasswordInvalid(on: self)
                        print("invalid pass")
                    }
                }
            
            }
            else{
               Alert.showIdInvalid(on: self)
                  print("invalid id")
            }
    }
    }
}


