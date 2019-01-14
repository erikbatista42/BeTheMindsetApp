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
        videoOne.url = "https://www.youtube.com/watch?v=ZOy0YgUDwDg"
        videos.append(videoOne)
        
        var videoTwo = Video()
        videoTwo.id = "FhzNSPiqO0M"
        videoTwo.title = "Lost But Won"
        videoTwo.description = "Forget about your past. Make the rest of your life the best of your life"
        videoTwo.url = "https://www.youtube.com/watch?v=FhzNSPiqO0M"
        videos.append(videoTwo)
        
        var videoThree = Video()
        videoThree.id = "mgmVOuLgFB0"
        videoThree.title = "Why do we fall?"
        videoThree.description = "If you want something, go get it. Period."
        videoThree.url = "https://www.youtube.com/watch?v=mgmVOuLgFB0"
        videos.append(videoThree)
        
        var videoFive = Video()
        videoFive.id = "g-jwWYX7Jlo"
        videoFive.title = "Dream"
        videoFive.description = "Just remember, the hardest part is believing in yourself﻿"
        videoFive.url = "https://www.youtube.com/watch?v=g-jwWYX7Jlo"
        videos.append(videoFive)
        
        var videoSix = Video()
        videoSix.id = "t8ApMdi24LI"
        videoSix.title = "I CAN DO IT"
        videoSix.description = "Failure & Fear should be your best friends"
        videoSix.url = "https://www.youtube.com/watch?v=t8ApMdi24LI"
        videos.append(videoSix)
        
        var videoSeven = Video()
        videoSeven.id = "26U_seo0a1g"
        videoSeven.title = "Unbroken"
        videoSeven.description = "The people who are crazy enough to think they can change the world are the ones who do"
        videoSeven.url = "https://www.youtube.com/watch?v=26U_seo0a1g"
        videos.append(videoSeven)
        
        var videoEight = Video()
        videoEight.id = "uMJ5Zwfz1pU"
        videoEight.title = "Never Give up"
        videoEight.description = "If you don't do it nothing is possible. If you try to do it at least you have the hope"
        videoEight.url = "https://www.youtube.com/watch?v=uMJ5Zwfz1pU"
        videos.append(videoEight)
        
        return videos
    }
    
}
