//
//  RegisterViewController.swift
//  LoginViewCode
//
//  Created by Sévio Basilio Corrêa on 19/01/23.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {
    
    var registerScreen: RegisterScreen?
    
    var auth: Auth?
    
    override func loadView() {
        self.registerScreen = RegisterScreen()
        self.view = self.registerScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerScreen?.delegate(delegate: self)
        // Ou self.registerScreen?.delegate = self
        self.registerScreen?.configTextFieldDelegate(delegate: self)
        self.auth = Auth.auth()
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
        
        guard let register = self.registerScreen else {return}
        
        let email: String = register.getEmail()
        let password: String = register.getPassword()
        
        self.auth?.createUser(withEmail: email, password: password, completion: { result, error in
            
            if error != nil {
                print("Error ao Cadastrar: \(String(describing: error?.localizedDescription))")
            } else {
                print("Sucesso ao Cadastrar")
            }
        })
    }
}
