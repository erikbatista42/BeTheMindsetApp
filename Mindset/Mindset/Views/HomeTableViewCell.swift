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
        view.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
