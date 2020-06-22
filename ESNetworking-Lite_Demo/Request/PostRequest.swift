//
//  PostRequest.swift
//  testtestSPM
//
//  Created by Дмитрий Торопкин on 22.06.2020.
//  Copyright © 2020 Dmitriy Toropkin. All rights reserved.
//

import Foundation
import ESNetworking_Lite

class PostsPostRequest: ESRequest {
    
    var path: String {
        return "/posts"
    }
    
    var method: ESRequestType {
        return .post
    }
    
    override var bodyParameters: [String : Any] {
        return ["title": "test test test",
                "body": "bar",
                "userId": 1]
    }
}
