//
//  HomeScreen.swift
//  LoginViewCode
//
//  Created by Sévio Basilio Corrêa on 30/01/23.
//

import UIKit

class HomeScreen: UIView {
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .white
        tableView.register(UserDetailTableViewCell.self, forCellReuseIdentifier: UserDetailTableViewCell.indentifier)
        
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackground()
        self.addSubView()
        self.setUpConstraints()
    }
    
    public func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        
        self.tableView.delegate = delegate
        self.tableView.dataSource = dataSource
    }
    
    private func configBackground() {
        self.backgroundColor = UIColor(red: 24/255, green: 117/255, blue: 104/255, alpha: 1.0)
    }
    
    func addSubView() {
        self.addSubview(self.tableView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            self.tableView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            self.tableView.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor),
            self.tableView.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
            
            
            
            
        ])
    }
    
}
