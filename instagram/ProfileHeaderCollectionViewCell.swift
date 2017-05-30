//
//  ProfileHeaderCollectionViewCell.swift
//  instagram
//
//  Created by Iven Prillwitz on 30.05.17.
//  Copyright © 2017 Petch. All rights reserved.
//

import UIKit

class ProfileHeaderCollectionViewCell: UICollectionViewCell {
    
    var user: User? {
        didSet{
        
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
        setupImageView()
        setupProfileEditButton()
    }
    
    fileprivate func setupPostButton(){
        
        self.addSubview(postButton)
        self.addSubview(postLabel)
        
        postButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 20)
        
    }
    
    fileprivate func setupProfileEditButton(){
        
        self.addSubview(profileEditButton)
        
        profileEditButton.topAnchor.constraint(equalTo: profileImageView.centerYAnchor).isActive = true
        profileEditButton.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 20).isActive = true
        profileEditButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
        profileEditButton.heightAnchor.constraint(equalToConstant: 32).isActive = true
    }
    
    fileprivate func setupImageView(){
        
        self.addSubview(profileImageView)
        
        profileImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        profileImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 80).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
    }
    
    let profileEditButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Profil bearbeiten", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 6
        button.layer.borderWidth = 0.5
        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Medium", size: 12)!
        button.layer.borderColor = UIColor.lightGray.cgColor
        return button
    }()
    
    let postLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Beiträge"
        label.textColor = .lightGray
        return label
    }()
    
    let subscriberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Beiträge"
        label.textColor = .lightGray
        return label
    }()
    
    let subscribedLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Beiträge"
        label.textColor = .lightGray
        return label
    }()
    
    
    let postButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("11", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    let subscriberButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("123", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    let subscribedButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("180", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    let profileImageView: UIImageView = {
        let imageview = UIImageView()
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.image = UIImage(named: "example")
        imageview.layer.borderColor = UIColor.lightGray.cgColor
        imageview.layer.borderWidth = 1
        imageview.layer.cornerRadius = 80 / 2
        imageview.clipsToBounds = true
        return imageview
    }()
    
}
