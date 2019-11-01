//
//  progressViewController.swift
//  Toilers
//
//  Created by Sai rajeev Kallalu on 1/11/19.
//  Copyright © 2019 Sai rajeev Kallalu. All rights reserved.
//

import UIKit

class progressViewController: UIViewController {

    @IBOutlet weak var im2: UIImageView!
    @IBOutlet weak var im1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.im1.image = UIImage(named: "image2")
        self.im1.contentMode =  UIView.ContentMode.scaleAspectFit
        self.im2.image = UIImage(named: "image4")
        self.im2.contentMode =  UIView.ContentMode.scaleAspectFit
        
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
