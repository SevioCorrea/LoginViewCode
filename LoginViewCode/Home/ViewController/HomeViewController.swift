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

        self.homeScreen?.configTableViewProtocols(delegate: self, dataSource: self)
    }

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let color: [UIColor] = [.orange, .green, .red, .blue, .black]
        let cel: UITableViewCell = UITableViewCell()
        cel.backgroundColor = color[indexPath.row]
        return cel
    }
    
    
    
    
}
