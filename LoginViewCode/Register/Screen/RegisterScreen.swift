//
//  RegisterScreen.swift
//  LoginViewCode
//
//  Created by Sévio Basilio Corrêa on 19/01/23.
//

import UIKit

class RegisterScreen: UIView {

    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "chevron.left"), for: .normal)
        
        return button
    }()
    
    lazy var imageAddUser: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "person.badge.plus")
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackground()
        self.configSuperView()
        self.setUpConstraints()
    }
    
    private func configSuperView(){
        self.addSubview(self.backButton)
        self.addSubview(self.imageAddUser)
    }
    
    private func configBackground() {
        self.backgroundColor = UIColor(red: 24/255, green: 117/255, blue: 104/255, alpha: 1.0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            
            
        ])
    }
    
}
