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
    
    let messageComposer = MessageComposer()
    
    var collectionView: UICollectionView?
    let layout = UICollectionViewFlowLayout()
    
    let cellId = "cellId"
    
    var videos = [Video]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavBar()
        setupCollectionView()
        
        let model = videoModel()
        self.videos = model.getVideos()
        
    }
    
    func setupCollectionView() {
        let frame = CGRect(x: 0, y: 0, width: view.frame.width, height: (view.frame.height) - 62)
        collectionView = UICollectionView(frame: frame, collectionViewLayout: layout)
        
        collectionView?.register(HomeCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.delegate = self
        collectionView?.dataSource = self
        view.addSubview(collectionView!)
        collectionView?.backgroundColor = .black
        collectionView?.showsVerticalScrollIndicator = false
    }
    
    func setupNavBar() {
        UIApplication.shared.keyWindow?.tintColor = .black // so activity controller title buttons will be black
        self.title = "BTM"
        let navBar = navigationController?.navigationBar
        navBar?.isTranslucent = false
        navBar?.barStyle = UIBarStyle.black
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "gear.png")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleOptionsButton))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(handleAddVideoButton))
        navigationItem.rightBarButtonItem?.tintColor = .white
        
    }
    
    @objc func handleOptionsButton() {
        let activityController = UIAlertController()
        
        let contactCreaterButton = UIAlertAction(title: "Contact Creator 📩", style: .default, handler: { (action) -> Void in
            if (self.messageComposer.canSendText()) {
                
                // Obtain a configured MFMessageComposeViewController
                let messageComposeVC = self.messageComposer.configuredMessageComposeViewController()
                //            presentedViewController(messageComposeVC, animated: true, completion: nil)
                self.present(messageComposeVC, animated: true, completion: nil)
            } else {
                let errorAlert = UIAlertController(title: "Cannot Send Text Message", message: "Your device is not able to send text messages.", preferredStyle: .alert)
                errorAlert.addAction(UIAlertAction(title: "OK", style: .default) { _ in })
                self.present(errorAlert, animated: true, completion: nil)
            }
        })
        
        let shareApp = UIAlertAction(title: "Share App 👥", style: .default, handler: { (action) -> Void in
            let appURL = "https://itunes.apple.com/us/app/be-the-mindset/id1175214273?mt=8"
            
                let textToShare = ["Check out the Mindset app! \(appURL)"]
                let activityViewController = UIActivityViewController(activityItems: textToShare, applicationActivities: nil)
                activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash

            
             self.present(activityViewController, animated: true, completion: nil)
        })
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) -> Void in
            print("Cancel button tapped")
        })
        
        activityController.addAction(contactCreaterButton)
        activityController.addAction(shareApp)
        activityController.addAction(cancelButton)
        
        self.present(activityController, animated: true, completion: nil)
    }
    
    @objc func handleAddVideoButton() {
        print("add video button pressed")
    }
    
    
}


extension VideosListController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(123)
//        guard let url = NSURL(string: videos[indexPath.row].url) else { return }
        
//        print(url)
        //        let player = AVPlayer(url: url as URL)
        //        let playerViewController = AVPlayerViewController()
        //        playerViewController.player = player
        //        self.present(playerViewController, animated: true) {
        //            playerViewController.player!.play()
        //        }
        VideoViewController.passedVidId = videos[indexPath.row].id
        navigationController?.pushViewController(VideoViewController(), animated: true)
    }
    
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
