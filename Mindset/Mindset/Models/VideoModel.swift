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
        
        var videos = [Video]()
        
        var videoOne = Video()
        videoOne.id = "ZOy0YgUDwDg"
        videoOne.title = "Vision"
        videoOne.description = "If you quit, no day will ever be your day"
        videos.append(videoOne)
        
        var videoTwo = Video()
        videoTwo.id = "FhzNSPiqO0M"
        videoTwo.title = "Lost But Won"
        videoTwo.description = "Forget about your past. Make the rest of your life the best of your life"
        videos.append(videoTwo)
        
        var videoThree = Video()
        videoThree.id = "mgmVOuLgFB0"
        videoThree.title = "Why do we fall?"
        videoThree.description = "If you want something, go get it. Period."
        videos.append(videoThree)
        
        var videoFive = Video()
        videoFive.id = "g-jwWYX7Jlo"
        videoFive.title = "Dream"
        videoFive.description = "Just remember, the hardest part is believing in yourself﻿"
        videos.append(videoFive)
        
        
        return videos
    }
    
}
