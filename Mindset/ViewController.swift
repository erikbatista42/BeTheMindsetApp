//
//  ViewController.swift
//  Mindset
//
//  Created by Erik Batista on 8/22/16.
//  Copyright © 2016 btm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let messageComposer = MessageComposer()
    
    //    var videos:[Video] = [Video]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //        let model = VideoModel()
        //        self.videos = model.getVideos()
        //
        
        
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .Default
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func contactUsButtonClicked(_ sender: UIButton) {
        if (messageComposer.canSendText()) {
            
            // Obtain a configured MFMessageComposeViewController
            let messageComposeVC = messageComposer.configuredMessageComposeViewController()
//            presentedViewController(messageComposeVC, animated: true, completion: nil)
            presentViewController(messageComposeVC, animated: true, completion: nil)
        } else {
            let errorAlert = UIAlertController(title: "Cannot Send Text Message", message: "Your device is not able to send text messages.", preferredStyle: .Alert)
            errorAlert.addAction(UIAlertAction(title: "OK", style: .Default) { _ in })
            self.presentViewController(errorAlert, animated: true, completion: nil)            
        }
    }
    
    @IBAction func getMotivatedButton(sender: AnyObject) {
        self.performSegueWithIdentifier("segue", sender: nil)
    }
    
    
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
}

