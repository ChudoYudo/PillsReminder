//
//  CreateAccountVC.swift
//  Pills
//
//  Created by NG on 12/4/17.
//  Copyright © 2017 NG. All rights reserved.
//

import UIKit




class CreateAccountVC: UIViewController {

    @IBOutlet weak var firstNameText: UITextField!
    @IBOutlet weak var secondNameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func signUpPressed(_ sender: Any) {
        if Reachability.isConnectedToNetwork() == true {
            //Регистрируем пользователя, заходим в его аккаунт и осуществляем переход на главный ViewController приложения
            RegistrationAndLoginViaEmail.register(email: emailText.text!, password: passwordText.text!,firstName: firstNameText.text!, secondName: secondNameText.text!, viewController: self, identifier: "toUserVC")
            
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
    

}
