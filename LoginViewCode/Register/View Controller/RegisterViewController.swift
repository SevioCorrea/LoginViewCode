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
        
    }

}
