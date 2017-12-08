//
//  UserVC.swift
//  Pills
//
//  Created by NG on 12/4/17.
//  Copyright © 2017 NG. All rights reserved.
//

import UIKit

class UserVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func logOutPressed(_ sender: Any) {
        SaveUserSignInfo.sayImLoggedOut()
    }
    
}
