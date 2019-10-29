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



class testViewController: UIViewController {
    
    
  let supervisor = HomePageViewController()
    
    
    
    

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        supervisor.getAppConfig()
        supervisor.onboardOrRestore()
  
    }
    
   
    
    
 
    

}
