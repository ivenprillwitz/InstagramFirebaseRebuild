//
//  CommandCollectionViewCell.swift
//  instagram
//
//  Created by Iven Prillwitz on 20.05.17.
//  Copyright © 2017 Petch. All rights reserved.
//

import UIKit
import FaveButton

class CommandCollectionViewCell: UICollectionViewCell {
    
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        setupView()
    }
    required init(coder aDecoder:NSCoder) {
        fatalError("init(coder:) has not been implemnted")
    }
    
    fileprivate func setupView(){
        
        self.addSubview(heartButton)
        
        heartButton.topAnchor.constraint(equalTo: self.topAnchor, constant: topMargin).isActive = true
        heartButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 6).isActive = true
        heartButton.widthAnchor.constraint(equalToConstant: buttonSize).isActive = true
        heartButton.heightAnchor.constraint(equalToConstant: buttonSize).isActive = true
        
        
        self.addSubview(commentButton)
        
        commentButton.topAnchor.constraint(equalTo: self.topAnchor, constant: topMargin).isActive = true
        commentButton.leftAnchor.constraint(equalTo: heartButton.rightAnchor, constant: buttonMargin).isActive = true
        commentButton.widthAnchor.constraint(equalToConstant: buttonSize).isActive = true
        commentButton.heightAnchor.constraint(equalToConstant: buttonSize).isActive = true
        
        self.addSubview(shareButton)
        
        shareButton.topAnchor.constraint(equalTo: self.topAnchor, constant: topMargin).isActive = true
        shareButton.leftAnchor.constraint(equalTo: commentButton.rightAnchor, constant: buttonMargin).isActive = true
        shareButton.widthAnchor.constraint(equalToConstant: buttonSize).isActive = true
        shareButton.heightAnchor.constraint(equalToConstant: buttonSize).isActive = true
        
        self.addSubview(bookmarkButton)
        
        bookmarkButton.topAnchor.constraint(equalTo: self.topAnchor, constant: topMargin).isActive = true
        bookmarkButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        bookmarkButton.widthAnchor.constraint(equalToConstant: buttonSize).isActive = true
        bookmarkButton.heightAnchor.constraint(equalToConstant: buttonSize).isActive = true
        
    }
    
    
    let buttonSize: CGFloat = 40
    let buttonMargin: CGFloat = 5
    let topMargin: CGFloat = 6
    
    
    let heartButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named:"heart"), for: .normal)
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignment.fill
        button.contentVerticalAlignment = UIControlContentVerticalAlignment.fill
        button.imageEdgeInsets = UIEdgeInsets(top: 8, left: 7, bottom: 8, right: 7)
        button.tintColor = .black
        return button
    }()
    
    let commentButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named:"comment"), for: .normal)
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignment.fill
        button.contentVerticalAlignment = UIControlContentVerticalAlignment.fill
        button.imageEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        button.tintColor = .black
        return button
    }()
    
    let shareButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named:"paperplane"), for: .normal)
        button.tintColor = .black
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignment.fill
        button.contentVerticalAlignment = UIControlContentVerticalAlignment.fill
        button.imageEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        return button
    }()
    
    let bookmarkButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named:"bookmark"), for: .normal)
        button.tintColor = .black
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignment.fill
        button.contentVerticalAlignment = UIControlContentVerticalAlignment.fill
        button.imageEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        return button
    }()
}
