//
//  SaveUserInfo.swift
//  Pills
//
//  Created by NG on 12/8/17.
//  Copyright © 2017 NG. All rights reserved.
//

import Foundation

public class SaveUserSignInfo {
    static var userFirstName: String = ""
    static var userSecondName: String = ""
    //Сохраняет в UserDefaults пароль и e-mail пользователя
    class func saveEmailAndPassword(email: String, password: String) {
        UserDefaults.standard.setValue(email, forKey: "userEmail")
        UserDefaults.standard.synchronize()
        
        UserDefaults.standard.setValue(password, forKey: "userPassword")
        UserDefaults.standard.synchronize()
    }
    
    //Сохраняет в UserDefaults информацию о том, что пользователь уже зарегистрировался
    class func sayImLoggedIn() {
        UserDefaults.standard.set(true, forKey: "loggedIn")
        UserDefaults.standard.synchronize()
    }
    
    //Сохраняет в UserDefaults информацию о том, что пользователь уже вышел из аккаунта
    class func sayImLoggedOut() {
        UserDefaults.standard.set(false, forKey: "loggedIn")
        UserDefaults.standard.setValue("", forKey: "firstName")
        UserDefaults.standard.setValue("", forKey: "secondName")
        UserDefaults.standard.synchronize()
    }
    
    //Сохраняет в UserDefaults информацию о том, что пользователь создал аккаунт
    class func userHaveJustCreatedNewAccount() {
        UserDefaults.standard.set(true, forKey: "firstTime")
        UserDefaults.standard.synchronize()
    }
    
    //Сохраняет ID пользователя
    class func saveUserID(id: String) {
        UserDefaults.standard.setValue(id, forKey: "UserID")
        UserDefaults.standard.synchronize()
    }
    
    class func userSignedInOldAccount() {
        UserDefaults.standard.set(false, forKey: "firstTime")
        UserDefaults.standard.synchronize()
    }
    class func setUserName(firstName: String, secondName: String){
        UserDefaults.standard.setValue("\(firstName)", forKey: "firstName")
        UserDefaults.standard.setValue("\(secondName)", forKey: "secondName")
        userFirstName = firstName
        userSecondName = secondName
        UserDefaults.standard.synchronize()
    }
}
