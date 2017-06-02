//
//  ProfileImageOnlyCollectionViewCell.swift
//  instagram
//
//  Created by Iven Prillwitz on 02.06.17.
//  Copyright © 2017 Petch. All rights reserved.
//

import UIKit

class ProfileImageOnlyCollectionViewCell: UICollectionViewCell {
    
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
        
        backgroundColor = .blue
        
        self.addSubview(imageView)
        
        imageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        imageView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
    }
    
    let imageView: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(named: "example1")
        imageview.contentMode = .scaleToFill
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    
}
