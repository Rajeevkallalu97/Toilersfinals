//
//  InspectorHomeViewController.swift
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

class InspectorHomeViewController: UIViewController {

   
    var id1 = String()
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is InspectorAllocatedViewController
        {
            let vc = segue.destination as? InspectorAllocatedViewController
            vc!.id = id1
        }
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showList(_ sender: Any) {
       
         self.performSegue(withIdentifier: "InspectorComp", sender: nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
