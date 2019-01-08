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
        iv.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(thumbnail)
        thumbnail.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        thumbnail.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        thumbnail.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        thumbnail.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    


}
