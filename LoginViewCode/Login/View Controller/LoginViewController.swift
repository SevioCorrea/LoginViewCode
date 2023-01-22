//
//  ViewController.swift
//  LoginViewCode
//
//  Created by Sévio Basilio Corrêa on 07/01/23.
//

import UIKit

class LoginViewController: UIViewController {  // AULA 2 39:35
    
    var loginScreen: LoginScreen?
    
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginScreen?.delegate(delegate: self)
        // Ou self.loginScreen?.delegate = self
        self.loginScreen?.configTextFieldDelegate(delegate: self)
        
    }
    
    /// Ocultando a Navigation Bar do topo da tela
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setToolbarHidden(true, animated: false)
    }

}

extension LoginViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.loginScreen?.validaTextFields()
    }
    
    
}

extension LoginViewController: LoginScreenProtocol {
    func actionLoginButton() {
        print("Ok.")
    }
    
    func actionRegisterButton() {
        print("Ok.")
        let vc: RegisterViewController = RegisterViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
