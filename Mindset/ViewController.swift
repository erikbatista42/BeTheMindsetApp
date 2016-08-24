//
//  ViewController.swift
//  Mindset
//
//  Created by Erik Batista on 8/22/16.
//  Copyright © 2016 btm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //    var videos:[Video] = [Video]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //        let model = VideoModel()
        //        self.videos = model.getVideos()
        //
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func getMotivatedButton(sender: AnyObject) {
        self.performSegueWithIdentifier("segue", sender: nil)
    }
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
}

