//
//  MessageComposer.swift
//  Mindset
//
//  Created by Erik Batista on 12/28/16.
//  Copyright © 2016 btm. All rights reserved.
//

import Foundation
import MessageUI

let textMessageRecipients = ["1-347-641-4125"]

class MessageComposer: NSObject, MFMessageComposeViewControllerDelegate {
    
    // Checks if a text message can be sent from the user's device
    func canSendText() -> Bool {
        return MFMessageComposeViewController.canSendText()
    }
    // Configures and returns a MFMessageComposeViewController instance
    func configuredMessageComposeViewController() -> MFMessageComposeViewController {
        let messageComposeVC = MFMessageComposeViewController()
        messageComposeVC.messageComposeDelegate = self
        messageComposeVC.recipients = textMessageRecipients
        messageComposeVC.body = "Hey Be The Mindset! I have some feedback for you about the app: "
        return messageComposeVC
    }
    // Dismisses the view controller when the user is finished with it
    
    func messageComposeViewController(controller: MFMessageComposeViewController, didFinishWithResult result: MessageComposeResult) {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
}

