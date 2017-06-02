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
        setupImageView()
        setupProfileEditButton()
        setupStackview()
    }
    
    fileprivate func setupStackview(){
    
        let stackview = UIStackView(arrangedSubviews: [postContainerView, subscriberContainerView, subscribedContainerView])
        stackview.axis = .horizontal
        stackview.distribution = .fillEqually
        stackview.alignment = .fill
        stackview.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(stackview)
        
        stackview.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        stackview.leftAnchor.constraint(equalTo: profileEditButton.leftAnchor).isActive = true
        stackview.rightAnchor.constraint(equalTo: profileEditButton.rightAnchor).isActive = true
        stackview.bottomAnchor.constraint(equalTo: profileEditButton.topAnchor).isActive = true
        
        setupPostButtonAndLabel()
        setupSubscriberButtonAndLabel()
        setupSubscribedButtonAndLabel()
    }
    
    fileprivate func setupSubscribedButtonAndLabel(){
        
        subscribedContainerView.addSubview(subscribedButton)
        subscribedContainerView.addSubview(subscribedLabel)
        
        subscribedButton.centerYAnchor.constraint(equalTo: subscribedContainerView.centerYAnchor, constant: -6).isActive = true
        subscribedButton.centerXAnchor.constraint(equalTo: subscribedContainerView.centerXAnchor, constant: 0).isActive = true
        subscribedButton.widthAnchor.constraint(equalTo: subscribedButton.widthAnchor).isActive = true
        subscribedButton.heightAnchor.constraint(equalToConstant: 10).isActive = true
        
        subscribedLabel.topAnchor.constraint(equalTo: subscribedButton.bottomAnchor, constant: 0).isActive = true
        subscribedLabel.centerXAnchor.constraint(equalTo: subscribedContainerView.centerXAnchor, constant: 0).isActive = true
        subscribedLabel.widthAnchor.constraint(equalTo: subscribedLabel.widthAnchor).isActive = true
        subscribedLabel.heightAnchor.constraint(equalToConstant: 18).isActive = true
    }
    
    
    fileprivate func setupSubscriberButtonAndLabel(){
        
        subscriberContainerView.addSubview(subscriberButton)
        subscriberContainerView.addSubview(subscriberLabel)
        
        subscriberButton.centerYAnchor.constraint(equalTo: subscriberContainerView.centerYAnchor, constant: -6).isActive = true
        subscriberButton.centerXAnchor.constraint(equalTo: subscriberContainerView.centerXAnchor, constant: 0).isActive = true
        subscriberButton.widthAnchor.constraint(equalTo: subscriberButton.widthAnchor).isActive = true
        subscriberButton.heightAnchor.constraint(equalToConstant: 10).isActive = true
        
        subscriberLabel.topAnchor.constraint(equalTo: subscriberButton.bottomAnchor, constant: 0).isActive = true
        subscriberLabel.centerXAnchor.constraint(equalTo: subscriberContainerView.centerXAnchor, constant: 0).isActive = true
        subscriberLabel.widthAnchor.constraint(equalTo: subscriberLabel.widthAnchor).isActive = true
        subscriberLabel.heightAnchor.constraint(equalToConstant: 18).isActive = true
    }
    
    fileprivate func setupPostButtonAndLabel(){
        
        postContainerView.addSubview(postButton)
        postContainerView.addSubview(postLabel)
        
        
        postButton.centerYAnchor.constraint(equalTo: postContainerView.centerYAnchor, constant: -6).isActive = true
        postButton.centerXAnchor.constraint(equalTo: postContainerView.centerXAnchor, constant: 0).isActive = true
        postButton.widthAnchor.constraint(equalTo: postButton.widthAnchor).isActive = true
        postButton.heightAnchor.constraint(equalToConstant: 10).isActive = true
        
        postLabel.topAnchor.constraint(equalTo: postButton.bottomAnchor, constant: 0).isActive = true
        postLabel.centerXAnchor.constraint(equalTo: postContainerView.centerXAnchor, constant: 0).isActive = true
        postLabel.widthAnchor.constraint(equalTo: postLabel.widthAnchor).isActive = true
        postLabel.heightAnchor.constraint(equalToConstant: 18).isActive = true
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
    
    let postContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let subscriberContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let subscribedContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
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
        label.font = UIFont(name: "HelveticaNeue-Medium", size: 12)
        label.textColor = .lightGray
        label.textAlignment = .center
        return label
    }()
    
    let subscriberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Abonnenten"
        label.font = UIFont(name: "HelveticaNeue-Medium", size: 12)
        label.textColor = .lightGray
        return label
    }()
    
    let subscribedLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "abonniert"
        label.font = UIFont(name: "HelveticaNeue-Medium", size: 12)
        label.textColor = .lightGray
        return label
    }()
    
    
    let postButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("11", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Medium", size: 12)!
        return button
    }()
    
    let subscriberButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("123", for: .normal)
        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Medium", size: 12)!
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    let subscribedButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("180", for: .normal)
        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Medium", size: 12)!
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
