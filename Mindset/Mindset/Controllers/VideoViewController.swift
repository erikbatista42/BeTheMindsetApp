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
    
    static var passedVidId: String?
    static var passedTitle: String?
    static var passedDescription: String?
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = VideoViewController.passedTitle
        label.backgroundColor = .black
        label.font = UIFont.systemFont(ofSize: 24)
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.textColor = UIColor.white
        label.numberOfLines = 3
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var webView: UIWebView = {
        let wk = UIWebView()
        wk.backgroundColor = .black
        wk.translatesAutoresizingMaskIntoConstraints = false
        wk.allowsInlineMediaPlayback = false
        return wk
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = VideoViewController.passedDescription
        label.backgroundColor = .black
        label.font = UIFont.systemFont(ofSize: 16)
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = UIColor.white
        label.numberOfLines = 3
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "share_icon.png")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleShareButton))
        
        view.addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8).isActive = true
        
        titleLabel.heightAnchor.constraint(equalToConstant: 125).isActive = true
        
        view.addSubview(webView)
        webView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        webView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        webView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        webView.heightAnchor.constraint(equalToConstant: 300).isActive = true
//                webView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150).isActive = true
        
        view.addSubview(descriptionLabel)
        descriptionLabel.topAnchor.constraint(equalTo: webView.bottomAnchor, constant: 0).isActive = true
        descriptionLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        descriptionLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        descriptionLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
    
    @objc func handleShareButton() {
        print("sharing btn tapped")
    }
    
    let videos = [Video]()
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        UIApplication.shared.keyWindow?.tintColor = .white
        let width = webView.frame.width
        let height = webView.frame.height
        
        let videoEmbedString = "<html><head><style type=\"text/css\">body {background-color: transparent;color: white;}</style></head><body style=\"margin:0\"><iframe frameBorder=\"0\" height=\"\(height) \" width=\"\(width) \" src=\"http://www.youtube.com/embed/\(VideoViewController.passedVidId ?? "")?showinfo=0&modestbranding=1&frameborder=0&rel=0\"></iframe></body></html>"

        webView.loadHTMLString(videoEmbedString, baseURL: nil)
        
    }
    
    
}
