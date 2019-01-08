//
//  MainController.swift
//  Mindset
//
//  Created by luxury on 1/7/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import Foundation
import UIKit

class HomeController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let cellId = "cellId"
    var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        navigationController?.navigationBar.barStyle = UIBarStyle.black

        
        tableView = UITableView(frame: view.frame)
        tableView?.register(HomeTableViewCell.self, forCellReuseIdentifier: cellId)
        tableView?.delegate = self
        tableView?.dataSource = self
        self.title = "BTM"
        view.addSubview(tableView!)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    let list = ["erik", "bob", "ben","mel"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! HomeTableViewCell
//        cell.textLabel?.text = list[indexPath.row]
        return cell
    }
}
