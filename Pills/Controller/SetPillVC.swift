//
//  SetPillVC.swift
//  Pills
//
//  Created by NG on 12/8/17.
//  Copyright © 2017 NG. All rights reserved.
//

import UIKit
import Timepiece

class SetPillVC: UIViewController {

    @IBOutlet weak var productTextField: UITextField!
    @IBOutlet weak var cycleTextField: UITextField!
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    var pill: Pill = Pill()
    
    @IBAction func startButtonPressed(_ sender: Any) {
        pill.setPill(pillName: productTextField.text!, pillNumber: Int(amountTextField.text!)!, pillCycle: Int(cycleTextField.text!)!, dateOfStart: Date(), reminder: Int(slider.value))
        User.addPill(pill: pill)
        performSegue(withIdentifier: "addedPill", sender: nil)
    }
    @IBAction func sliderValueChanged(_ sender: Any) {
        sliderLabel.text = "\(String(Int(slider.value))) hours"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

