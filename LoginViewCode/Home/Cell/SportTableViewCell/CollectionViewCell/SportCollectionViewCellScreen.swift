//
//  SportCollectionViewCellScreen.swift
//  LoginViewCode
//
//  Created by Sévio Basilio Corrêa on 12/02/23.
//

import UIKit

class SportCollectionViewCellScreen: UIView {

    lazy var viewBackground: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        
        return view
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
        self.addSubview(self.viewBackground)
    }
    
    func configconstraints() {
        NSLayoutConstraint.activate([
            self.viewBackground.topAnchor.constraint(equalTo: self.topAnchor),
            self.viewBackground.rightAnchor.constraint(equalTo: self.rightAnchor),
            self.viewBackground.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.viewBackground.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }

}
