//
//  FirebaseManager.swift
//  instagram
//
//  Created by Iven Prillwitz on 22.05.17.
//  Copyright © 2017 Petch. All rights reserved.
//

import Foundation
import Firebase

class FirebaseManager {

    static let firebaseReference = FIRDatabase.database().reference()
    
    public static func GetImages(completion: @escaping ([Post]?) -> ()){
        
        var postArray = [Post]()
        
        firebaseReference.child("posts").observeSingleEvent(of: .value, with: { (data) in
            
            if let posts = data.value as? [String:Any]{
                
                for post in posts {
                    
                    if let value = post.value as? [String: Any] {
                        
                        guard let postID = value["id"] as? String,
                            let profileImageUrl = value["profileImageUrl"] as? String,
                            let username = value["username"] as? String,
                            let postImageUrl = value["postImageUrl"] as? String,
                            let timestamp = value["timestamp"] as? Int else {
                                
                                print("FirebaseManager: Error parsing Image")
                                return
                        }
                        
                        
                        let  post = Post(postID: postID ,
                                         profileImageUrl: profileImageUrl,
                                         username: username,
                                         postImageUrl: postImageUrl,
                                         timestamp: timestamp)
                        
                        postArray.append(post)
                    }
                }
                
                completion(postArray)
            }
        }, withCancel: { (error) in
                print(error)
        })
    }
}
