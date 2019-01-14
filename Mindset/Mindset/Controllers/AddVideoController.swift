//
//  viewVideoController.swift
//  Mindset
//
//  Created by luxury on 1/9/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import Foundation
import UIKit

class AddVideoController: UIViewController {
    
    lazy var youtubeURLLabel: UILabel = {
        let label = UILabel()
        label.text = "Youtube URL"
        label.backgroundColor = .black
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = UIColor.white
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let urlTextField: UITextField = {
        let tf = UITextField()
        tf.backgroundColor = UIColor.rgb(red: 75, green: 79, blue: 99, alpha: 1)
        tf.textColor = .white
        tf.borderStyle = .roundedRect
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.clearButtonMode = .whileEditing
        tf.autocapitalizationType = .none
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor.rgb(red: 99, green: 110, blue: 100, alpha: 1),
            NSAttributedString.Key.font : UIFont(name: "Arial-ItalicMT", size: 14)!
        ]
        tf.attributedPlaceholder = NSAttributedString(string: "e.g https://www.youtube.com/watch?v=ZOy0YgUDwDg", attributes:attributes)
        return tf
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Description"
        label.backgroundColor = .black
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = UIColor.white
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let descriptionTextField: UITextField = {
        let tf = UITextField()
        tf.backgroundColor = UIColor.rgb(red: 75, green: 79, blue: 99, alpha: 1)
        tf.textColor = .white
        tf.borderStyle = .roundedRect
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.clearButtonMode = .whileEditing
        tf.autocapitalizationType = .none
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor.rgb(red: 99, green: 110, blue: 100, alpha: 1),
            NSAttributedString.Key.font : UIFont(name: "Arial-ItalicMT", size: 14)!
        ]
        tf.attributedPlaceholder = NSAttributedString(string: "e.g. If it was easy everybody would do it", attributes:attributes)
        return tf
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Add Video"
        
        let navBar = navigationController?.navigationBar
        navBar?.tintColor = .white
        navBar?.isTranslucent = false
        navBar?.barStyle = UIBarStyle.black
        
        view.backgroundColor = .black
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .done, target: self, action: #selector(handleCancelButton))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(handleDoneButton))
        
        view.addSubview(youtubeURLLabel)
        youtubeURLLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        youtubeURLLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8).isActive = true
        youtubeURLLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8).isActive = true
        
        view.addSubview(urlTextField)
        urlTextField.topAnchor.constraint(equalTo: youtubeURLLabel.bottomAnchor, constant: 5).isActive = true
        urlTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8).isActive = true
        urlTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8).isActive = true
        urlTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        view.addSubview(descriptionLabel)
        descriptionLabel.topAnchor.constraint(equalTo: urlTextField.bottomAnchor, constant: 8).isActive = true
        descriptionLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8).isActive = true
        descriptionLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8).isActive = true
        
        view.addSubview(descriptionTextField)
        descriptionTextField.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 8).isActive = true
        descriptionTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8).isActive = true
        descriptionTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8).isActive = true
        descriptionTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }
    
    @objc func handleCancelButton() {
        print("cancel")
        dismiss(animated: true, completion: nil)
    }
    
    @objc func handleDoneButton() {
        print("Done")
        navigationController?.popViewController(animated: true)
    }
    
}
