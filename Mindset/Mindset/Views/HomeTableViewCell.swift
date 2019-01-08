//
//  HomeTableViewCell.swift
//  Mindset
//
//  Created by luxury on 1/8/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    let thumbnail: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let titleBackgroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let title: UILabel = {
        let label = UILabel()
        label.text = "this is the video title"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(thumbnail)
        thumbnail.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        thumbnail.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        thumbnail.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        thumbnail.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        
        addSubview(titleBackgroundView)
        titleBackgroundView.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        titleBackgroundView.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        titleBackgroundView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        titleBackgroundView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        addSubview(title)
        title.topAnchor.constraint(equalTo: titleBackgroundView.topAnchor, constant: 0).isActive = true
        title.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        title.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        title.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
