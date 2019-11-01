//
//  ImageViewController.swift
//  Toilers
//
//  Created by Sai rajeev Kallalu on 1/11/19.
//  Copyright © 2019 Sai rajeev Kallalu. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var start: UITextField!
    @IBOutlet weak var end: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       self.assignbackground()
      
     
    }
    func assignbackground(){
        self.imageView.image = UIImage(named: "Maps.png")
        self.imageView.contentMode =  UIView.ContentMode.scaleAspectFit
    }
    
    func assignbackgroundAB(){
        self.imageView.image = UIImage(named: "AtoB.png")
        self.imageView.contentMode =  UIView.ContentMode.scaleAspectFit
  
    }
    func assignbackgroundAC(){
        self.imageView.image = UIImage(named: "AtoC.png")
        self.imageView.contentMode =  UIView.ContentMode.scaleAspectFit
        
    }
    func assignbackgroundAD(){
        self.imageView.image = UIImage(named: "AtoD.png")
        self.imageView.contentMode =  UIView.ContentMode.scaleAspectFit
        
    }
    
    
    @IBAction func logOut(_ sender: Any) {
        let dashboardVC = navigationController!.viewControllers.filter { $0 is HomePageViewController }.first!
        navigationController!.popToViewController(dashboardVC, animated: true)
    }
    
    
    @IBAction func get(_ sender: Any) {
        if ((start.text?.contains("BRAKE"))! && (end.text?.contains("DRUM"))!){
        self.assignbackgroundAB()
        }
       else if ((start.text?.contains("BRAKE"))! && (end.text?.contains("WIND LASS"))!){
            self.assignbackgroundAC()
        }
        else if ((start.text?.contains("BRAKE"))! && (end.text?.contains("GEAR"))!){
            self.assignbackgroundAD()
        }
        else{
            Alert.NOROUTE(on: self)
        }
      
    }
    

}
