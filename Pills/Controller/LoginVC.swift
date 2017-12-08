//
//  LoginVC.swift
//  Pills
//
//  Created by NG on 12/4/17.
//  Copyright © 2017 NG. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func logginPressed(_ sender: Any) {
        UserDefaults.standard.set(true, forKey: "loggedIn")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
