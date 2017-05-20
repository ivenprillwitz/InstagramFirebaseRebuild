//
//  ViewController.swift
//  instagram
//
//  Created by Iven on 21/12/2016.
//  Copyright © 2016 Petch. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

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
        
        
        let searchViewController = SearchViewController()
        let searchTabBarItem = UITabBarItem(title: "", image: UIImage(named: "search"), selectedImage: UIImage(named: "search"))
        searchViewController.tabBarItem = searchTabBarItem
        
        
        let photoViewController = PhotoViewController()
        let photoTabBarItem = UITabBarItem(title: "", image: UIImage(named: "photo"), selectedImage: UIImage(named: "photo"))
        photoViewController.tabBarItem = photoTabBarItem
        
        
        let activityViewController = ActivityViewController()
        let activityTabBarItem = UITabBarItem(title: "", image: UIImage(named: "activity"), selectedImage: UIImage(named: "activity"))
        activityViewController.tabBarItem = activityTabBarItem
        
        let profileViewController = ProfileViewController()
        let profileTabBarItem = UITabBarItem(title: "", image: UIImage(named: "profile"), selectedImage: UIImage(named: "profile"))
        profileViewController.tabBarItem = profileTabBarItem
        
        
        viewControllers = [feedViewController, searchViewController, photoViewController, activityViewController, profileViewController]
    }

}


