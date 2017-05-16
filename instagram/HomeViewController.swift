//
//  HomeViewController.swift
//  instagram
//
//  Created by Iven on 21/12/2016.
//  Copyright © 2016 Petch. All rights reserved.
//

import UIKit
import IGListKit
import FaveButton


func color(_ rgbColor: Int) -> UIColor{
    return UIColor(
        red:   CGFloat((rgbColor & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbColor & 0x00FF00) >> 8 ) / 255.0,
        blue:  CGFloat((rgbColor & 0x0000FF) >> 0 ) / 255.0,
        alpha: CGFloat(1.0)
    )
}

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(button)
        
        view.addSubview(collectionView)
        
        
        collectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        collectionView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        collectionView.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        collectionView.heightAnchor.constraint(equalToConstant: view.frame.height).isActive = true
        
        
        button.topAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.leftAnchor.constraint(equalTo: view.centerXAnchor, constant: -22).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44).isActive = true
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true

    }
    
    
    let collectionView : IGListCollectionView = {
         var view = IGListCollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout())
        view.backgroundColor = .black
        return view
    }()
    
    //let colors = [
    //    DotColors(first: color(0x7DC2F4), second: color(0xE2264D)),
    //    DotColors(first: color(0xF8CC61), second: color(0x9BDFBA)),
    //    DotColors(first: color(0xAF90F4), second: color(0x90D1F9)),
    //    DotColors(first: color(0xE9A966), second: color(0xF8C852)),
    //    DotColors(first: color(0xF68FA7), second: color(0xF6A2B8))
    //]

    //func faveButton(_ faveButton: FaveButton, didSelected selected: Bool){
    //}
    
    //func faveButtonDotColors(_ faveButton: FaveButton) -> [DotColors]?{
    //        return colors
    //}
    
    
    lazy var button: FaveButton = {
        let button = FaveButton(
            frame: CGRect(x:0, y:0, width: 44, height: 44),
            faveIconNormal: UIImage(named: "heart"))
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
}
