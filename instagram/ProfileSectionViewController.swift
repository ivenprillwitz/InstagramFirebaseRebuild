//
//  ProfileSectionViewController.swift
//  instagram
//
//  Created by Iven Prillwitz on 30.05.17.
//  Copyright © 2017 Petch. All rights reserved.
//

import UIKit
import IGListKit

class ProfileSectionViewController: ListSectionController {

    var user: User!
    
    override func numberOfItems() -> Int {
        return 3
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        
        switch index {
            case 0:
                return CGSize(width: collectionContext!.containerSize.width, height: 100)
            case 1:
                return CGSize(width: collectionContext!.containerSize.width, height: 60)
            case 2:
                return CGSize(width: collectionContext!.containerSize.width, height: collectionContext!.containerSize.height - 220)
            default:
                return CGSize(width: collectionContext!.containerSize.width, height: 500)
        }
        
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        
    switch index {
        case 0:
            guard let cell = collectionContext?.dequeueReusableCell(of: ProfileHeaderCollectionViewCell.self, for: self, at: index) as? ProfileHeaderCollectionViewCell else {
                fatalError()
            }
            cell.user = user
            return cell
        case 1:
            guard let cell = collectionContext?.dequeueReusableCell(of: ProfileDescriptionCollectionViewCell.self, for: self, at: index) as? ProfileDescriptionCollectionViewCell else {
            fatalError()
            }
            cell.user = user
            return cell
        case 2:
            guard let cell = collectionContext?.dequeueReusableCell(of: ProfileImagesCollectionViewCell.self, for: self, at: index) as? ProfileImagesCollectionViewCell else {
                fatalError()
            }
            cell.user = user
            return cell
        default:
            return UICollectionViewCell()
        }
    }
    
    override func didUpdate(to object: Any) {
        user = object as? User
    }
    
    override func didSelectItem(at index: Int) {
        
    }

}
