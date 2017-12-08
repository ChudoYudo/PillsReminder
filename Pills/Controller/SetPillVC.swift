//
//  SetPillVC.swift
//  Pills
//
//  Created by NG on 12/8/17.
//  Copyright © 2017 NG. All rights reserved.
//

import UIKit

class SetPillVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    var duration: [String] = []
    @IBOutlet weak var remindPicker: UIPickerView!
    override func viewDidLoad() {
        duration = ["hour", "2 hours", "3 hours", "6 hours", "8 hours", "12 hours", "24 hours"]
        remindPicker.delegate = self
        remindPicker.dataSource = self
        remindPicker.tag = 1
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return duration.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(duration[row])"
    }
    
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var itemSelected = duration[row]
    }
}

