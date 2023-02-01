//
//  HomeViewController.swift
//  LoginViewCode
//
//  Created by Sévio Basilio Corrêa on 30/01/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    var homeScreen: HomeScreen?
    
    override func loadView() {
        self.homeScreen = HomeScreen()
        self.view = homeScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue

        // Do any additional setup after loading the view.
    }

}
