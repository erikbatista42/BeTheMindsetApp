//
//  ViewController.swift
//  Mindset
//
//  Created by luxury on 1/7/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import UIKit

class GetMotivatedController: UIViewController {
    
    let getMotivatedButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .black
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Get Motivated", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleGetMotivatedButton), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        navigationController?.navigationBar.isHidden = true
        
        view.addSubview(getMotivatedButton)
        getMotivatedButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        getMotivatedButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        getMotivatedButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        getMotivatedButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
    }
    
    @objc func handleGetMotivatedButton() {
        navigationController?.present(HomeController(), animated: true, completion: nil)
    }


}

