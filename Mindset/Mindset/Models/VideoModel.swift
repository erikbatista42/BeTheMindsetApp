//
//  VideoModel.swift
//  Mindset
//
//  Created by luxury on 1/8/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import Foundation
class videoModel: NSObject {
    
    func getVideos() -> [Video] {
        
        // Empty array of videos
        var videos = [Video]()
        
        // video object
        var vidOne = Video()
        
        // assign properties
        vidOne.id = "ZOy0YgUDwDg"
        vidOne.title = "Vision"
        vidOne.description = "If you quit, no day will ever be your day"
        
        // add vid one to videos array
        videos.append(vidOne)
        
        
        // video object
        var vidTwo = Video()
        
        // assign properties
        vidTwo.id = "FhzNSPiqO0M"
        vidTwo.title = "Lost But Won"
        vidTwo.description = "Forget about your past. Make the rest of your life the best of your life"
        
        // add vid one to videos array
        videos.append(vidTwo)
        
        
        return videos
    }
    
}
