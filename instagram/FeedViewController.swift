//
//  HomeViewController.swift
//  instagram
//
//  Created by Iven on 21/12/2016.
//  Copyright © 2016 Petch. All rights reserved.
//

import UIKit
import IGListKit

class FeedViewController: UIViewController {
    
    var feedArray = [Post]()
    
    lazy var adapter : ListAdapter = {
        let adapter = ListAdapter(updater: ListAdapterUpdater(), viewController: self, workingRangeSize: 1)
        return adapter
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionview()
        LoadFeed()
    }
    
    fileprivate func LoadFeed(){
    
        FirebaseManager.GetImages { (postArray) in
            if let posts = postArray {
                self.feedArray = posts
                
                self.adapter.performUpdates(animated: true)
            }
        }
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    fileprivate func setupCollectionview(){
    
        adapter.collectionView = collectionView
        adapter.dataSource = self
        
        
        view.addSubview(collectionView)
        
        collectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        collectionView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        collectionView.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    }
    
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionview = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionview.translatesAutoresizingMaskIntoConstraints = false
        collectionview.backgroundColor = .white
        return collectionview
    }()
    
}



extension FeedViewController: ListAdapterDataSource {
    
    public func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return feedArray
    }
    
 
    public func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        return PostSectionController()
    }
    
    
    
    public func emptyView(for listAdapter: ListAdapter) -> UIView? {
        let view = UIView()
        return view
    }
}





















