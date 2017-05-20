//
//  Post.swift
//  instagram
//
//  Created by Iven Prillwitz on 20.05.17.
//  Copyright © 2017 Petch. All rights reserved.
//

import Foundation
import IGListKit

class Post {
    
    
    let postID: String
    let profileImageUrl: String
    let username: String
    let postImageUrl: String
    let timestamp: Int
    
    
    init (postID: String, profileImageUrl: String, username: String,
        postImageUrl: String , timestamp: Int ){
        
        self.postID = postID
        self.profileImageUrl = profileImageUrl
        self.username = username
        self.postImageUrl = postImageUrl
        self.timestamp = timestamp
    }
    
}

extension Post: Equatable {
    
    static public func ==(rhs: Post , lhs: Post) -> Bool {
        return rhs.postID == lhs.postID
    }
}

extension Post: ListDiffable {
    

    public func diffIdentifier() -> NSObjectProtocol {
            return postID as NSObjectProtocol
    }
    
    public func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let object = object as? Post else {
            return false
        }
        
        return self.postID == object.postID
    }
}
