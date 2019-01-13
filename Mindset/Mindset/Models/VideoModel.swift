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
        //        videoOne.url = "If you quit, no day will ever be your day"
        videoOne.url = "https://youtu.be/ZOy0YgUDwDg"
        videos.append(videoOne)
        
        var videoTwo = Video()
        videoTwo.id = "FhzNSPiqO0M"
        videoTwo.title = "Lost But Won"
        videoTwo.url = "Forget about your past. Make the rest of your life the best of your life"
        videos.append(videoTwo)
        
        var videoThree = Video()
        videoThree.id = "mgmVOuLgFB0"
        videoThree.title = "Why do we fall?"
        videoThree.url = "If you want something, go get it. Period."
        videos.append(videoThree)
        
        var videoFive = Video()
        videoFive.id = "g-jwWYX7Jlo"
        videoFive.title = "Dream"
        videoFive.url = "Just remember, the hardest part is believing in yourself﻿"
        videos.append(videoFive)
        
        var videoSix = Video()
        videoSix.id = "t8ApMdi24LI"
        videoSix.title = "I CAN DO IT"
        videoSix.url = "Failure & Fear should be your best friends"
        videos.append(videoSix)
        
        var videoSeven = Video()
        videoSeven.id = "26U_seo0a1g"
        videoSeven.title = "Unbroken"
        videoSeven.url = "The people who are crazy enough to think they can change the world are the ones who do"
        videos.append(videoSeven)
        
        var videoEight = Video()
        videoEight.id = "uMJ5Zwfz1pU"
        videoEight.title = "Never Give up"
        videoEight.url = "If you don't do it nothing is possible. If you try to do it at least you have the hope"
        videos.append(videoEight)
        
        return videos
    }
    
}
