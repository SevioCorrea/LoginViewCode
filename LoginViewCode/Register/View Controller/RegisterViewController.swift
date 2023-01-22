//
//  RegisterViewController.swift
//  LoginViewCode
//
//  Created by Sévio Basilio Corrêa on 19/01/23.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var registerScreen: RegisterScreen?
    
    override func loadView() {
        self.registerScreen = RegisterScreen()
        self.view = self.registerScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerScreen?.delegate(delegate: self)
        // Ou self.registerScreen?.delegate = self
        self.registerScreen?.configTextFieldDelegate(delegate: self)
    }
}

extension RegisterViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.registerScreen?.validaTextFields()
    }
}


extension RegisterViewController: RegisterScreenProtocol {
    func actionRegisterButton() {
        print("Ok.")
    }
}
