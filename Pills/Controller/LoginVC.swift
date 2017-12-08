//
//  LoginVC.swift
//  Pills
//
//  Created by NG on 12/4/17.
//  Copyright © 2017 NG. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func logginPressed(_ sender: Any) {
        if Reachability.isConnectedToNetwork() == true {
            RegistrationAndLoginViaEmail.login(email: emailText.text!, password: passwordText.text!, viewController: self, identifier: "toUser")
            SaveUserSignInfo.userSignedInOldAccount()
        }
            //Если же соединения с интернетом нет
        else {
            //Инициализируем наше сообщение об отсутствии интернета
            let alert = UIAlertController(title: "Ошибка!", message: "Проверьте соединение с интернетом.", preferredStyle: .alert)
            //Добавляем ему обработчик (в данном случае он пустой)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            //Устанавливаем обработчик
            alert.addAction(action)
            //Выводим сообщение
            present(alert, animated: true, completion: nil)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
