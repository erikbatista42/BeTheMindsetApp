//
//  VideoViewController.swift
//  Mindset
//
//  Created by luxury on 1/12/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class VideoViewController: UIViewController {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Sample label this might sometimes turn out to be a really long label you know what i mean?"
        label.backgroundColor = .white
        label.font = UIFont.systemFont(ofSize: 16)
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = UIColor.gray
        label.numberOfLines = 3
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var webView: WKWebView = {
        let wk = WKWebView()
        wk.backgroundColor = .blue
        wk.load(URLRequest(url: URL(string: "https://m.youtube.com/results?search_query=motivational+videos")!))
        wk.translatesAutoresizingMaskIntoConstraints = false
        return wk
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        view.addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8).isActive = true
        
        titleLabel.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
                view.addSubview(webView)
//                let f = view.frame
//                webView.frame = CGRect(x: f.origin.x, y: f.origin.y, width: f.size.width, height: f.size.height - tabBarController!.tabBar.frame.size.height)
                webView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
                webView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
                webView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
                webView.heightAnchor.constraint(equalToConstant: 150).isActive = true
                webView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150).isActive = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIApplication.shared.keyWindow?.tintColor = .white
    }
    
    
}
