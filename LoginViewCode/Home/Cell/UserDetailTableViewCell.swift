//
//  UserDetailTableViewCell.swift
//  LoginViewCode
//
//  Created by Sévio Basilio Corrêa on 06/02/23.
//

import UIKit

class UserDetailTableViewCell: UITableViewCell {
    
    static let indentifier: String = "UserDetailTableViewCell"
    
    lazy var userDetailView: UserDetailView = {
        let view = UserDetailView()
        return view
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview()
        self.configConstraintsDescriptionCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubview() {
        self.contentView.addSubview(self.userDetailView)
    }
    
    public func setupCell(data: DataUser) {
        self.userDetailView.nameLabel.text = data.name
        self.userDetailView.userImageView.image = UIImage(named: data.nameImage)
    }
    
    private func configConstraintsDescriptionCell() {
        self.userDetailView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
}
