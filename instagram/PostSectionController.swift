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
        return 6
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        
        switch index {
        case 0:
            return CGSize(width: collectionContext!.containerSize.width, height: 500)
        case 1:
            return CGSize(width: collectionContext!.containerSize.width, height: 44)
        case 2:
            return CGSize(width: collectionContext!.containerSize.width, height: 20)
        case 3:
            return CGSize(width: collectionContext!.containerSize.width, height: 20)
        case 4:
            return CGSize(width: collectionContext!.containerSize.width, height: 20)
        case 5:
            return CGSize(width: collectionContext!.containerSize.width, height: 20)
        default:
            return CGSize(width: collectionContext!.containerSize.width, height: 500)
        }
        
    }
    
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        
        
        switch index {
        case 0:
            guard let cell = collectionContext?.dequeueReusableCell(of: FeedCollectionViewCell.self, for: self, at: index) as? FeedCollectionViewCell else {
                fatalError()
            }
            cell.post = post
            return cell
        case 1:
            guard let cell = collectionContext?.dequeueReusableCell(of: CommandCollectionViewCell.self, for: self, at: index) as? CommandCollectionViewCell else {
                fatalError()
            }
            return cell
        case 2:
            guard let cell = collectionContext?.dequeueReusableCell(of: LikeCollectionViewCell.self, for: self, at: index) as? LikeCollectionViewCell else {
                fatalError()
            }
            return cell
        case 3:
            guard let cell = collectionContext?.dequeueReusableCell(of: DescriptionCollectionViewCell.self, for: self, at: index) as? DescriptionCollectionViewCell else {
                fatalError()
            }
            return cell
        case 4:
            guard let cell = collectionContext?.dequeueReusableCell(of: CommentCollectionViewCell.self, for: self, at: index) as? CommentCollectionViewCell else {
                fatalError()
            }
            return cell
        case 5:
            guard let cell = collectionContext?.dequeueReusableCell(of: TimestampCollectionViewCell.self, for: self, at: index) as? TimestampCollectionViewCell else {
                fatalError()
            }
            return cell
        default:
            return UICollectionViewCell()
        }
    }
    
    override func didUpdate(to object: Any) {
        post = object as? Post
    }
    
    override func didSelectItem(at index: Int) {
        
    }
    
}

