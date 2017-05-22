//
//  LikeCollectionViewCell.swift
//  instagram
//
//  Created by Iven Prillwitz on 21.05.17.
//  Copyright © 2017 Petch. All rights reserved.
//

import UIKit

class LikeCollectionViewCell: UICollectionViewCell {
    
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        setupView()
    }
    required init(coder aDecoder:NSCoder) {
        fatalError("init(coder:) has not been implemnted")
    }
    
    fileprivate func setupView(){
        
        self.addSubview(likeLabel)
        
        likeLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        likeLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12).isActive = true
        likeLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        likeLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    let likeLabel: UILabel = {
        let label = UILabel()
        label.text = "Gefällt 968 Mal"
        label.textColor = .black
        label.font = UIFont(name: "HelveticaNeue-Medium", size: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
}
