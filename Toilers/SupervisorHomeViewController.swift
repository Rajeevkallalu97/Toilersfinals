//
//  SupervisorHomeViewController.swift
//  Toilers
//
//  Created by Sai rajeev Kallalu on 26/10/19.
//  Copyright © 2019 Sai rajeev Kallalu. All rights reserved.
//
import UIKit
import SAPFoundation
import SAPFioriFlows
import SAPOData
import SAPCommon




class SupervisorHomeViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
        
    
    
    
    @IBAction func logOut(_ sender: Any) {
        let dashboardVC = navigationController!.viewControllers.filter { $0 is HomePageViewController }.first!
        navigationController!.popToViewController(dashboardVC, animated: true)
    }
    

    
    
    @IBAction func ShowAll(_ sender: Any) {
        //self.performSegue(withIdentifier: "test", sender: nil)
        self.performSegue(withIdentifier: "AllComponents", sender: nil)
    }
    
    
 
    
   

}
