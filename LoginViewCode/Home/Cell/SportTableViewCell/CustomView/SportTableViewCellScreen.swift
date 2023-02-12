//
//  SportTableViewCellScreen.swift
//  LoginViewCode
//
//  Created by Sévio Basilio Corrêa on 11/02/23.
//

import UIKit

class SportTableViewCellScreen: UIView {
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout.init())
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .blue
        collectionView.delaysContentTouches = false
        collectionView.register(SportCollectionViewCell.self, forCellWithReuseIdentifier: SportCollectionViewCell.identifier)
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
        layout.scrollDirection = .horizontal
        collectionView.setCollectionViewLayout(layout, animated: false)
        
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview()
        self.configConstraints()
//        self.configConstraintsCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configProtocolsCollectionView(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource) {
        self.collectionView.delegate = delegate
        self.collectionView.dataSource = dataSource
    }
    
    func addSubview() {
        self.addSubview(self.collectionView)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            
            self.collectionView.topAnchor.constraint(equalTo: self.topAnchor),
            self.collectionView.rightAnchor.constraint(equalTo: self.rightAnchor),
            self.collectionView.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
        ])
    }
    
//    func configConstraintsCollectionView() {
//        self.collectionView.snp.makeConstraints { make in
//            make.edges.equalToSuperview()
//        }
//    }
    
}
