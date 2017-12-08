//
//  UserVC.swift
//  Pills
//
//  Created by NG on 12/4/17.
//  Copyright © 2017 NG. All rights reserved.
//

import UIKit

class UserVC: UIViewController {
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var secondNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameLabel.text = UserDefaults.standard.value(forKey: "firstName") as! String
        secondNameLabel.text = UserDefaults.standard.value(forKey: "secondName") as! String
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
