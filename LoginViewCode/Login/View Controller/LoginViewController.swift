//
//  ViewController.swift
//  LoginViewCode
//
//  Created by Sévio Basilio Corrêa on 07/01/23.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    var loginScreen: LoginScreen?
    var auth: Auth?
    
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginScreen?.delegate(delegate: self)
        // Ou self.loginScreen?.delegate = self
        self.loginScreen?.configTextFieldDelegate(delegate: self)
        self.auth = Auth.auth()
        
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
        
        guard let login = self.loginScreen else { return }
        
        let email: String = login.getEmail()
        let password: String = login.getPassword()
        
        self.auth?.signIn(withEmail: email, password: password, completion: { usuario, error in
            
            if error != nil {
                print("Error ao logar: \(String(describing: error?.localizedDescription))")
                print()
            } else {
                print("Sucesso ao logar.")
            }
        })
        
    }
    
    func actionRegisterButton() {
        print("Ok.")
        let vc: RegisterViewController = RegisterViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
