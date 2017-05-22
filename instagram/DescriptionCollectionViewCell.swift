//
//  DescriptionCollectionViewCell.swift
//  instagram
//
//  Created by Iven Prillwitz on 21.05.17.
//  Copyright © 2017 Petch. All rights reserved.
//

import UIKit

class DescriptionCollectionViewCell: UICollectionViewCell {
 
    override init(frame: CGRect){
        super.init(frame: frame)
        
        setupView()
    }
    required init(coder aDecoder:NSCoder) {
        fatalError("init(coder:) has not been implemnted")
    }
    
    fileprivate func setupView(){
        
        self.addSubview(usernameLabel)
        
        usernameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        usernameLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12).isActive = true
        usernameLabel.widthAnchor.constraint(equalToConstant: usernameLabel.intrinsicContentSize.width).isActive = true
        usernameLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        
        self.addSubview(descriptionLabel)
        
        descriptionLabel.centerYAnchor.constraint(equalTo: usernameLabel.centerYAnchor).isActive = true
        descriptionLabel.leftAnchor.constraint(equalTo: usernameLabel.rightAnchor, constant: 4).isActive = true
        descriptionLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        descriptionLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
    }
    
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "leavecaricealone"
        label.textColor = .black
        label.font = UIFont(name: "HelveticaNeue-Medium", size: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Finally I can wear my new favorite sun glasses"
        label.textColor = .black
        label.font = UIFont(name: "HelveticaNeue", size: 12)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
}
