//
//  UIImageViewExtension.swift
//  instagram
//
//  Created by Iven Prillwitz on 22.05.17.
//  Copyright © 2017 Petch. All rights reserved.
//

import Foundation
import UIKit

let imageCache = NSCache<AnyObject, AnyObject>()

extension UIImageView {
    
    func setImage(from url: URL, withPlaceholder placeholder: UIImage? = nil) {
        
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        
        if let cachedImage = imageCache.object(forKey: url as AnyObject) as? UIImage {
            
            DispatchQueue.main.async {
                
                self.image = cachedImage
                UIApplication.shared.isNetworkActivityIndicatorVisible = false
            }
            
        } else {
            
            self.image = placeholder
            
            URLSession.shared.dataTask(with: url) { data,_,_ in
                
                if let data = data {
                    
                    if let image = UIImage(data: data) {
                        
                        DispatchQueue.main.async {
                            
                            self.image = image
                            imageCache.setObject(image, forKey: url as AnyObject)
                            UIApplication.shared.isNetworkActivityIndicatorVisible = false
                        }
                    }
                }
            }.resume()
        }
    }
}
