//
//  ViewController.swift
//  SkyDoc
//
//  Created by arbenjusufhayati on 5/22/16.
//  Copyright © 2016 Versus UE. All rights reserved.
//

import UIKit
import SwiftyJSON


class ViewController: UIViewController {
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func testConnection(sender: AnyObject) {
        print("test starts")
        let service = SkyDocService()
        
        service.getAvailablePhysiciansForPatient()

//        service.login(){
//                response in
//          
//        }
        
    }
    
    

}

