//
//  CommentCollectionViewCell.swift
//  instagram
//
//  Created by Iven Prillwitz on 21.05.17.
//  Copyright © 2017 Petch. All rights reserved.
//

import UIKit

class CommentCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemnted")
    }
    fileprivate func setupView() {
        self.addSubview(commentLabel)
        commentLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        commentLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12).isActive = true
        commentLabel.widthAnchor.constraint(equalToConstant: commentLabel.intrinsicContentSize.width).isActive = true
        commentLabel.heightAnchor.constraint(equalToConstant: commentLabel.intrinsicContentSize.height).isActive = true
    }
    
    let commentLabel: UILabel = {
        let label = UILabel()
        label.text = "Alle 8 Kommentare anzeigen"
        label.textColor = UIColor.lightGray
        label.font = UIFont(name: "HelveticaNeue", size: 12)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
}
