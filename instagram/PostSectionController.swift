//
//  PostSectionController.swift
//  instagram
//
//  Created by Iven Prillwitz on 20.05.17.
//  Copyright © 2017 Petch. All rights reserved.
//

import UIKit
import IGListKit

class PostSectionController: ListSectionController {
    
    var post: Post!
    let identifier = "FeedCellIdentifier"
    

    override func numberOfItems() -> Int {
        return 2
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        
        switch index {
        case 0:
            return CGSize(width: collectionContext!.containerSize.width, height: 500)
        case 1:
            return CGSize(width: collectionContext!.containerSize.width, height: 100)
        default:
            return CGSize(width: collectionContext!.containerSize.width, height: 500)
        }
        
    }
    
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        
        if index == 0 {
            guard let cell = collectionContext?.dequeueReusableCell(of: FeedCollectionViewCell.self, for: self, at: index) as? FeedCollectionViewCell else {
                fatalError()
            }
            return cell
        }
        if index == 1 {
            guard let cell = collectionContext?.dequeueReusableCell(of: CommandCollectionViewCell.self, for: self, at: index) as? CommandCollectionViewCell else {
                fatalError()
            }
            return cell
        }
        return UICollectionViewCell()
    }
    
    override func didUpdate(to object: Any) {
        post = object as? Post
    }
    
    override func didSelectItem(at index: Int) {
        
    }
    
}

