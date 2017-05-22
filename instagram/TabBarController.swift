//
//  ViewController.swift
//  instagram
//
//  Created by Iven on 21/12/2016.
//  Copyright © 2016 Petch. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    
    let margin: CGFloat = 6
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        
        title = "Instagram"

        self.tabBar.tintColor = .black
        tabBar.isTranslucent = false
        
        
        let image = UIImage(named: "instagram_logo")
        let imageView = UIImageView(image: image)
        self.navigationItem.titleView = imageView
        
        //Create Controllers
        
        let feedViewController = FeedViewController()
        let feedTabBarItem = UITabBarItem(title: "", image: UIImage(named: "home"), selectedImage: UIImage(named: "home"))
        feedViewController.tabBarItem = feedTabBarItem
        feedViewController.tabBarItem.imageInsets = UIEdgeInsetsMake(margin, 0, -margin, 0)
        
        let searchViewController = SearchViewController()
        let searchTabBarItem = UITabBarItem(title: "", image: UIImage(named: "search"), selectedImage: UIImage(named: "search"))
        searchViewController.tabBarItem = searchTabBarItem
        searchViewController.tabBarItem.imageInsets = UIEdgeInsetsMake(margin, 0, -margin, 0)
        
        
        let photoViewController = PhotoViewController()
        let photoTabBarItem = UITabBarItem(title: "", image: UIImage(named: "photo"), selectedImage: UIImage(named: "photo"))
        photoViewController.tabBarItem = photoTabBarItem
        photoViewController.tabBarItem.imageInsets = UIEdgeInsetsMake(margin, 0, -margin, 0)
        
        
        let activityViewController = ActivityViewController()
        let activityTabBarItem = UITabBarItem(title: "", image: UIImage(named: "activity"), selectedImage: UIImage(named: "activity"))
        activityViewController.tabBarItem = activityTabBarItem
        activityViewController.tabBarItem.imageInsets = UIEdgeInsetsMake(margin, 0, -margin, 0)
        
        let profileViewController = ProfileViewController()
        let profileTabBarItem = UITabBarItem(title: "", image: UIImage(named: "profile"), selectedImage: UIImage(named: "profile"))
        profileViewController.tabBarItem = profileTabBarItem
        profileViewController.tabBarItem.imageInsets = UIEdgeInsetsMake(margin, 0, -margin, 0)
        
        
        viewControllers = [feedViewController, searchViewController, photoViewController, activityViewController, profileViewController]
    }

}


