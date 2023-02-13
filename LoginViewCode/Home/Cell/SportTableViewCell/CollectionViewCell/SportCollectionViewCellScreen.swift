//
//  SportCollectionViewCellScreen.swift
//  LoginViewCode
//
//  Created by Sévio Basilio Corrêa on 12/02/23.
//

import UIKit

class SportCollectionViewCellScreen: UIView {

    lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var sportName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .darkGray
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview()
        self.configconstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubview() {
        self.addSubview(self.imageView)
        self.addSubview(self.sportName)
    }
    
    func configconstraints() {
        NSLayoutConstraint.activate([
            self.imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            self.imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            self.imageView.bottomAnchor.constraint(equalTo: self.sportName.topAnchor, constant: -10),
            
            self.sportName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.sportName.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            self.sportName.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            self.sportName.heightAnchor.constraint(equalToConstant: 20)
        ])
    }

}
