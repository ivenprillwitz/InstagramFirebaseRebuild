//
//  ProfileDescriptionCollectionViewCell.swift
//  instagram
//
//  Created by Iven Prillwitz on 02.06.17.
//  Copyright © 2017 Petch. All rights reserved.
//

import UIKit

class ProfileDescriptionCollectionViewCell: UICollectionViewCell {
    
    var user: User? {
        didSet{
            //Todo
        }
    }
    override init(frame: CGRect){
        super.init(frame: frame)
        
        setupView()
    }
    required init(coder aDecoder:NSCoder) {
        fatalError("init(coder:) has not been implemnted")
    }
    
    fileprivate func setupView(){
        setupProfileUsernameLabel()
        setupProfileDescriptionLabel()
    }
    
    fileprivate func setupProfileDescriptionLabel(){
        
        self.addSubview(profileDescriptionLabel)
        
        profileDescriptionLabel.topAnchor.constraint(equalTo: profileUsernameLabel.bottomAnchor, constant: 4).isActive = true
        profileDescriptionLabel.leftAnchor.constraint(equalTo: profileUsernameLabel.leftAnchor).isActive = true
        profileDescriptionLabel.widthAnchor.constraint(equalToConstant: profileDescriptionLabel.intrinsicContentSize.width).isActive = true
        profileDescriptionLabel.heightAnchor.constraint(equalToConstant: profileDescriptionLabel.intrinsicContentSize.height).isActive = true
        
    }
    
    fileprivate func setupProfileUsernameLabel(){
        
        self.addSubview(profileUsernameLabel)
        
        profileUsernameLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        profileUsernameLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant:12).isActive = true
        profileUsernameLabel.widthAnchor.constraint(equalToConstant: profileUsernameLabel.intrinsicContentSize.width).isActive = true
        profileUsernameLabel.heightAnchor.constraint(equalToConstant: profileUsernameLabel.intrinsicContentSize.height).isActive = true

    }
    
    let profileUsernameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Iven 'Peiper' Prillwitz"
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 12)
        return label
    }()
    
    let profileDescriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "iOS & Android Developer 👨‍💻 @ Munich"
        label.font = UIFont(name: "HelveticaNeue-Medium", size: 12)
        return label
    }()
}
