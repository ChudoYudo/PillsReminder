//
//  Pill.swift
//  Pills
//
//  Created by NG on 12/8/17.
//  Copyright © 2017 NG. All rights reserved.
//

import Foundation
import SwiftyJSON

class Pill {
    private var pillName: String = ""
    private var pillNumber: Int = 0
    private var pillCycle: Int = 0
    private var dateOfStart: Date = Date()
    private var reminder: Int = 0
    
    public func setPill(pillName: String, pillNumber: Int, pillCycle: Int, dateOfStart: Date, reminder: Int){
        self.pillName = pillName
        self.pillNumber = pillNumber
        self.pillCycle = pillCycle
        self.dateOfStart = dateOfStart
        self.reminder = reminder
    }
    public func getPillName() -> String {
        return self.pillName
    }
    
}
