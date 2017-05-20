//
//  FeedCollectionViewCell.swift
//  instagram
//
//  Created by Iven Prillwitz on 20.05.17.
//  Copyright © 2017 Petch. All rights reserved.
//

import UIKit

class FeedCollectionViewCell: UICollectionViewCell {
    
    var post: Post? {
        didSet{
            print("It works")
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
    
        setupProfileImageView()
        setupUsernameLabel()
        setupSeperatorView()
        setupPostImageview()
    
    }
    
    
    fileprivate func setupPostImageview(){
        
        self.addSubview(postImageView)
        
        postImageView.topAnchor.constraint(equalTo: seperatorView.bottomAnchor, constant: 1).isActive = true
        postImageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        postImageView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        postImageView.heightAnchor.constraint(equalToConstant: self.frame.height - 100).isActive = true
        
    }
    
    fileprivate func setupSeperatorView(){
        
        self.addSubview(seperatorView)
        
        seperatorView.topAnchor.constraint(equalTo : profileImageview.bottomAnchor , constant: 12).isActive = true
        seperatorView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        seperatorView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        seperatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    
    fileprivate func setupUsernameLabel(){
        
        self.addSubview(usernameLabel)
        
        usernameLabel.centerYAnchor.constraint(equalTo: profileImageview.centerYAnchor).isActive = true
        usernameLabel.leftAnchor.constraint(equalTo: profileImageview.rightAnchor, constant: 8).isActive = true
        usernameLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        usernameLabel.heightAnchor.constraint(equalToConstant: 22).isActive = true
    }
    
    
    fileprivate func setupProfileImageView(){
        
        self.addSubview(profileImageview)
        
        profileImageview.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        profileImageview.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 4).isActive = true
        profileImageview.widthAnchor.constraint(equalToConstant: 44).isActive = true
        profileImageview.heightAnchor.constraint(equalToConstant: 44).isActive = true
    }

    let seperatorView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let profileImageview: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.layer.cornerRadius = 22
//        imageView.layer.borderWidth = 1
//        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "username"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let postImageView: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(named: "example")
        imageview.contentMode = .scaleAspectFill
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    
}
