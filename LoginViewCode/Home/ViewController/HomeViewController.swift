//
//  HomeViewController.swift
//  LoginViewCode
//
//  Created by Sévio Basilio Corrêa on 30/01/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    var homeScreen: HomeScreen?
    var dataUser: [DataUser] = [DataUser(name: "Pessoa1", nameImage: "pessoa1"),
                                DataUser(name: "Pessoa2", nameImage: "pessoa2"),
                                DataUser(name: "Pessoa3", nameImage: "pessoa3")
                                 ]
    
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
        return dataUser.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 3 {
            let cell: SportTableViewCell? = tableView.dequeueReusableCell(withIdentifier: SportTableViewCell.identifier, for: indexPath) as? SportTableViewCell
            return cell ?? UITableViewCell()
        }
        
        let cell: UserDetailTableViewCell? = tableView.dequeueReusableCell(withIdentifier: UserDetailTableViewCell.indentifier, for: indexPath) as? UserDetailTableViewCell
        cell?.setupCell(data: dataUser[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    
    
    
}
