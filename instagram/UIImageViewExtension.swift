//
//  UIImageViewExtension.swift
//  instagram
//
//  Created by Iven Prillwitz on 22.05.17.
//  Copyright © 2017 Petch. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    
    func setImage(from url: URL, withPlaceholder placeholder: UIImage? = nil) {
        
        self.image = placeholder
        
        URLSession.shared.dataTask(with: url) { data,_,_ in
            
            if let data = data {
                
                let image = UIImage(data: data)
                
                DispatchQueue.main.async {
                    
                    self.image = image
                    
                }
            }
        }.resume()
    }
}
