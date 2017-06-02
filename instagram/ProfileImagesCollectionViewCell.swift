//
//  ProfileImagesCollectionViewCell.swift
//  instagram
//
//  Created by Iven Prillwitz on 02.06.17.
//  Copyright © 2017 Petch. All rights reserved.
//

import UIKit
import IGListKit

class ProfileImagesCollectionViewCell: UICollectionViewCell {
 
    let identifier: String = "identifier"
    
    var user: User? {
        didSet{
            //Todo
        }
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        setupView()
    }
    required init(coder aDecoder:NSCoder) {
        fatalError("init(coder:) has not been implemnted")
    }
    
    fileprivate func setupView(){
        
        setupSeperatorview()
        setupStackview()
        setupCollectionView()
    }
    
    fileprivate func setupCollectionView(){
    
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(ProfileImageOnlyCollectionViewCell.self, forCellWithReuseIdentifier: identifier)
        self.addSubview(collectionView)
        
        collectionView.topAnchor.constraint(equalTo: stackview.bottomAnchor).isActive = true
        collectionView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        collectionView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        collectionView.heightAnchor.constraint(equalToConstant: 400).isActive = true
    }
    
    
    fileprivate func setupStackview(){
    
        
        stackview = UIStackView(arrangedSubviews: [gridContainerView, listContainerView, tagContainerView, bookmarkContainerView])
        stackview.axis = .horizontal
        stackview.distribution = .fillEqually
        stackview.alignment = .fill
        stackview.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(stackview)
        
        stackview.topAnchor.constraint(equalTo: seperatorView.bottomAnchor).isActive = true
        stackview.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        stackview.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        stackview.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
        setupButtons()
    }

    fileprivate func setupSeperatorview(){
        
        self.addSubview(seperatorView)
        
        seperatorView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        seperatorView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        seperatorView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        seperatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    fileprivate func setupButtons(){
        
        gridContainerView.addSubview(gridButton)
        
        gridButton.centerXAnchor.constraint(equalTo: gridContainerView.centerXAnchor).isActive = true
        gridButton.centerYAnchor.constraint(equalTo: gridContainerView.centerYAnchor).isActive = true
        gridButton.widthAnchor.constraint(equalTo: gridContainerView.widthAnchor).isActive = true
        gridButton.heightAnchor.constraint(equalTo: gridContainerView.heightAnchor).isActive = true
        
        listContainerView.addSubview(listButton)
        
        listButton.centerXAnchor.constraint(equalTo: listContainerView.centerXAnchor).isActive = true
        listButton.centerYAnchor.constraint(equalTo: listContainerView.centerYAnchor).isActive = true
        listButton.widthAnchor.constraint(equalTo: listContainerView.widthAnchor).isActive = true
        listButton.heightAnchor.constraint(equalTo: listContainerView.heightAnchor).isActive = true
        
        tagContainerView.addSubview(tagButton)
        
        tagButton.centerXAnchor.constraint(equalTo: tagContainerView.centerXAnchor).isActive = true
        tagButton.centerYAnchor.constraint(equalTo: tagContainerView.centerYAnchor).isActive = true
        tagButton.widthAnchor.constraint(equalTo: tagContainerView.widthAnchor).isActive = true
        tagButton.heightAnchor.constraint(equalTo: tagContainerView.heightAnchor).isActive = true
        
        bookmarkContainerView.addSubview(bookmarkButton)
        
        bookmarkButton.centerXAnchor.constraint(equalTo: bookmarkContainerView.centerXAnchor).isActive = true
        bookmarkButton.centerYAnchor.constraint(equalTo: bookmarkContainerView.centerYAnchor).isActive = true
        bookmarkButton.widthAnchor.constraint(equalTo: bookmarkContainerView.widthAnchor).isActive = true
        bookmarkButton.heightAnchor.constraint(equalTo: bookmarkContainerView.heightAnchor).isActive = true
    }
    
    var stackview: UIStackView = {
        let stackview = UIStackView()
        return stackview
    }()
    
    let gridContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let listContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let tagContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let bookmarkContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    let seperatorView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.borderWidth = (1.0 / UIScreen.main.scale) / 2;
        view.backgroundColor = UIColor.clear
        return view
    }()
    
    let gridButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named:"profilegrid"), for: .normal)
        button.tintColor = .lightGray
        return button
    }()
    
    let listButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named:"accessorie-categorie"), for: .normal)
        button.tintColor = .lightGray
        return button
    }()
    
    let tagButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named:"tag"), for: .normal)
        button.tintColor = .lightGray
        return button
    }()
    
    let bookmarkButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named:"bookmark"), for: .normal)
        button.tintColor = .lightGray
        return button
    }()
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 1;
        layout.minimumLineSpacing = 1;
        let collectionview = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionview.translatesAutoresizingMaskIntoConstraints = false
        collectionview.isScrollEnabled = false
        collectionview.backgroundColor = .white
        return collectionview
    }()
 
}


extension ProfileImagesCollectionViewCell: UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: collectionView.frame.width * 0.33, height: collectionView.frame.width * 0.33)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(0, 0, 0, 0)
    }
}

