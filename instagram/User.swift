//
//  User.swift
//  instagram
//
//  Created by Iven Prillwitz on 20.05.17.
//  Copyright © 2017 Petch. All rights reserved.
//

import Foundation
import IGListKit

class User {

    let userID: String
    let userName: String
   
    init(userID: String, userName: String) {
        
        self.userID = userID
        self.userName = userName
    }
}

extension User: Equatable {
    
    static public func ==(rhs: User , lhs: User) -> Bool {
        return rhs.userID == lhs.userID
    }
}

extension User: ListDiffable {
    
    public func diffIdentifier() -> NSObjectProtocol {
        return userID as NSObjectProtocol
    }
    
    public func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let object = object as? User else {
            return false
        }
        
        return self.userID == object.userID
    }
}
