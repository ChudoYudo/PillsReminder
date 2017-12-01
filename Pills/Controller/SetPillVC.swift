//
//  SetPillVC.swift
//  Pills
//
//  Created by NG on 12/8/17.
//  Copyright © 2017 NG. All rights reserved.
//

import UIKit
import Timepiece
import Foundation

class SetPillVC: UIViewController {

    @IBOutlet weak var productTextField: UITextField!
    @IBOutlet weak var cycleTextField: UITextField!
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    var pill: Pill = Pill()
    
    @IBAction func startButtonPressed(_ sender: Any) {
        let pillNumber = Int(amountTextField.text!)!
        let pillCycle = Int(cycleTextField.text!)!
        let lol = pillNumber/pillCycle
        let dateOfStart = Date()
        let remind = Int(slider.value)
        pill.setPill(pillName: productTextField.text!, pillNumber: Int(amountTextField.text!)!, pillCycle: Int(cycleTextField.text!)!, dateOfStart: Date(), reminder: Int(slider.value))
        SaveUserSignInfo.mainUser.addPill(pill: pill)
        for i in 1...lol {
            var now = dateOfStart
            now = (now + ((i*remind).minutes))!
            setNotification(text: productTextField.text!, date: now)
        }
        performSegue(withIdentifier: "addPill", sender: nil)
        print(SaveUserSignInfo.mainUser.getPills()[0].getPillName())
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
    
    func setNotification(text: String, date: Date) {
        let notification = UILocalNotification()
        notification.alertTitle = "Take a pill"
        notification.alertBody = "It's time for taking a \(text)"
        notification.soundName = UILocalNotificationDefaultSoundName
        notification.fireDate = date
        UIApplication.shared.scheduleLocalNotification(notification)
    }
}
