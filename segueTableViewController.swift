//
//  segueTableViewController.swift
//  Mindset
//
//  Created by Erik Batista on 8/23/16.
//  Copyright © 2016 btm. All rights reserved.
//

import UIKit



class segueTableViewController: UITableViewController {
    
    
    @IBAction func unwindButton(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
    
    var videos:[Video] = [Video]()
    
    var selectedVideo: Video?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let model = VideoModel()
        self.videos = model.getVideos()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        //Get the width of the screen to caculate the height of the row
       return (self.view.frame.size.width / 320) * 180
    }
    

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return videos.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)

        let videoTitle = videos[indexPath.row].videoTitle
        
        
        
        
        
        
        
        // Configure the cell...
        
        
        //get the label for the cell
        let label = cell.viewWithTag(2) as! UILabel
        label.text = videoTitle
        
        
        
        
        //construct video thumbnail url
let videoThumbnailUrlString = "https://i1.ytimg.com/vi/" + videos[indexPath.row].videoId + "/maxresdefault.jpg"
        
        //create an NSURL object
        let videoThumbnailUrl = NSURL(string: videoThumbnailUrlString)
        
        
        
        if videoThumbnailUrl != nil {
            //create a NSURLrequest object
            let request = NSURLRequest(URL: videoThumbnailUrl!)
            
            //create an NSURLsession
            let session = NSURLSession.sharedSession()
            
            //create a datatask and pass in the request
            let dataTask = session.dataTaskWithRequest(request, completionHandler: { (data:NSData?, response: NSURLResponse?, error: NSError?) -> Void in
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    //Get a reference to the imageview element of the cell
                    let imageview = cell.viewWithTag(1) as! UIImageView
                    
                    //create an image object from the data and assign it to the image field
                    imageview.image = UIImage(data: data!)
                })
            })
    
    dataTask.resume()
                
                
        
}
        
        //change UINavigation Item Color
        self.navigationController?.navigationBar.barStyle = UIBarStyle.BlackTranslucent
        
self.navigationController?.navigationBar.barTintColor = UIColor.init(red: 0.100, green: 0.20, blue: 0.30, alpha: 0.0)

        
        
        

        return cell
    }
override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //take note of which view user selected
        self.selectedVideo = self.videos[indexPath.row]
    
        //call the segue
        self.performSegueWithIdentifier("goToInfo", sender: self)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //get a reference to the destination to the view controller
let detailViewController = segue.destinationViewController as! videoInfoViewController
        
        //set the selected video property of the destination view controller
        detailViewController.selectedVideo = self.selectedVideo
    }
}






















