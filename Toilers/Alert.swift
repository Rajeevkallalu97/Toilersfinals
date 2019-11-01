//
//  Alert.swift
//  Toilers
//
//  Created by Sai rajeev Kallalu on 14/10/19.
//  Copyright © 2019 Sai rajeev Kallalu. All rights reserved.
//

import Foundation
import UIKit
struct Alert {

    
   private static func basicAlertPattern(on pvc : UIViewController, wiht title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        pvc.present(alert, animated: true)
    
    }
    
    static func showIdInvalid(on pvc : UIViewController){
        basicAlertPattern(on: pvc, wiht: "INVALID ID!", message: "Please Enter a valid ID")
    }
    
    static func showIdInvName(on pvc : UIViewController){
        basicAlertPattern(on: pvc, wiht: "INVALID NAME!", message: "Please Enter a valid Name")
    }
    
    static func showPasswordInvalid(on pvc : UIViewController){
      basicAlertPattern(on: pvc, wiht: "INVALID PASSWORD!", message: "Please Enter a valid Password")
    }
       static func createdWork(on pvc : UIViewController){
            basicAlertPattern(on: pvc, wiht: "CREATED!", message: "Work Pack Created Successfully")
        }
    static func testDone(on pvc : UIViewController){
        basicAlertPattern(on: pvc, wiht: "DONE!", message: "Test Report Uploaded Successfully")
    }
    static func submitted(on pvc : UIViewController){
        basicAlertPattern(on: pvc, wiht: "DONE!", message: "Report Uploaded Successfully")
    }

static func NOROUTE(on pvc : UIViewController){
    basicAlertPattern(on: pvc, wiht: "NO ROUTE FOUND!", message: "Please check start and end points.")
    
}
        
    
   
}
