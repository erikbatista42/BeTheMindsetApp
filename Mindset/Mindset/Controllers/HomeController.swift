//
//  MainController.swift
//  Mindset
//
//  Created by luxury on 1/7/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import Foundation
import UIKit

// Controller of list of videos

class HomeController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let cellId = "cellId"
    var tableView: UITableView?
    
    var videos:[Video] = [Video]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "BTM"
        navigationController?.navigationBar.barStyle = UIBarStyle.black
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(handleAddVideoButton))
        
        tableView = UITableView(frame: view.frame)
        tableView?.register(HomeTableViewCell.self, forCellReuseIdentifier: cellId)
        tableView?.delegate = self
        tableView?.dataSource = self
        view.addSubview(tableView!)
        tableView?.backgroundColor = .black
        tableView?.separatorStyle = .none
        tableView?.showsVerticalScrollIndicator = false
        
        let model = videoModel()
        self.videos = model.getVideos()
    }
    
    @objc func handleAddVideoButton() {
        
        navigationController?.present(ViewVideoController(), animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    let list = ["erik", "bob", "ben","mel"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! HomeTableViewCell
//        cell.textLabel?.text = list[indexPath.row]
        let videoTitle = videos[indexPath.row].title
        cell.title.text = videoTitle
        
        // construct video url thumbnail
        let videoThumbnailUrlString = "https://i1.ytimg.com/vi/" + videos[indexPath.row].id + "/maxresdefault.jpg"
        
        // create an nsurl object
        let videoThumbnailUrl = NSURL(string: videoThumbnailUrlString)
        
        let request = URLRequest(url: videoThumbnailUrl! as URL)
        
        let session = URLSession.shared
        
        // create a datatask and pass in the request
        let dataTask = session.dataTask(with: request) { (data: Data?, response: URLResponse?, error: Error?) in
            DispatchQueue.main.async {
                // create an object from the data and assign it to the image field
                cell.thumbnail.image = UIImage(data: data!)
            }
        }
        
        dataTask.resume()
        
        return cell
    }
}
