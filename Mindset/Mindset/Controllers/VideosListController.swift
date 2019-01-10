//
//  MainController.swift
//  Mindset
//
//  Created by luxury on 1/7/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import Foundation
import UIKit

class VideosListController: UIViewController {
    
    var collectionView: UICollectionView?
    let layout = UICollectionViewFlowLayout()
    
    let cellId = "cellId"
    
    var videos:[Video] = [Video]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavBar()
        setupCollectionView()
        
        let model = videoModel()
        self.videos = model.getVideos()
    }
    
    func setupCollectionView() {
        collectionView = UICollectionView(frame: view.frame, collectionViewLayout: layout)
        collectionView?.register(HomeCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.delegate = self
        collectionView?.dataSource = self
        view.addSubview(collectionView!)
        collectionView?.backgroundColor = .black
        collectionView?.showsVerticalScrollIndicator = false
    }
    
    func setupNavBar() {
        self.title = "BTM"
        let navBar = navigationController?.navigationBar
        navBar?.isTranslucent = false
        navBar?.barStyle = UIBarStyle.black
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "gear.png")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleOptionsButton))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(handleAddVideoButton))
        navigationItem.rightBarButtonItem?.tintColor = .white
        
    }
    
    @objc func handleOptionsButton() {
        print("options button pressed")
    }
    
    @objc func handleAddVideoButton() {
        print("add video button pressed")
    }
    
    
}


extension VideosListController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.frame.width
        return CGSize(width: width, height: 212)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return videos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! HomeCollectionViewCell
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
