//
//  viewVideoController.swift
//  Mindset
//
//  Created by luxury on 1/9/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import Foundation
import UIKit

class ViewVideoController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.tintColor = .white
        self.title = "Add Video"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(handleDoneButton))
    }
    
    @objc func handleDoneButton() {
        print("handle button pressed")
    }
}
