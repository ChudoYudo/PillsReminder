//
//  User.swift
//  Pills
//
//  Created by NG on 12/8/17.
//  Copyright © 2017 NG. All rights reserved.
//

import Foundation
import SwiftyVK
import SwiftyJSON
import Timepiece

class User {
    static let instance = User()
    private var userName: String = ""
    private var userSecondName: String = ""
    private var pills: [Pill] = []
    
    public func setUser(userName: String, userSecondName: String){
        self.userName = userName
        self.userSecondName = userSecondName
    }
    public func addPill(pill: Pill){
        self.pills.append(pill)
    }
    public func getPillsNum() -> Int {
        return self.pills.count
    }
    public func getPills() -> [Pill]{
        return self.pills
    }
    public func setPills(pills: [Pill]){
        self.pills = pills
    }
    
}
