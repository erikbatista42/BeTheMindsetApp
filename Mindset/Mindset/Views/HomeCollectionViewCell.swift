//
//  HomeCollectionViewCell.swift
//  Mindset
//
//  Created by luxury on 1/9/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import Foundation
import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    let thumbnail: UIImageView = {
        let iv = UIImageView()
//        iv.image = UIImage(named: "sampleImg.png")
        iv.contentMode = .scaleAspectFit
        iv.backgroundColor = .black
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let titleBackgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(white: 0, alpha: 0.5)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let title: UILabel = {
        let label = UILabel()
        label.text = "This is the video title. Sometimes, it can be a very very long title!"
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(thumbnail)
        thumbnail.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        thumbnail.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        thumbnail.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        thumbnail.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        
        addSubview(titleBackgroundView)
        titleBackgroundView.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        titleBackgroundView.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        titleBackgroundView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        titleBackgroundView.heightAnchor.constraint(equalToConstant: 55).isActive = true
        
        addSubview(title)
        title.topAnchor.constraint(equalTo: titleBackgroundView.topAnchor, constant: 0).isActive = true
        title.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        title.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        title.bottomAnchor.constraint(equalTo: titleBackgroundView.bottomAnchor, constant: 0).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
