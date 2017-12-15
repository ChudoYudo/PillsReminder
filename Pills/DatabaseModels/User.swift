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
    
}
