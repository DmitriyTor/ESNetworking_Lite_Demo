//
//  GetRequest.swift
//  testtestSPM
//
//  Created by Дмитрий Торопкин on 22.06.2020.
//  Copyright © 2020 Dmitriy Toropkin. All rights reserved.
//

import Foundation
import ESNetworking_Lite

class PostsGetRequest: ESRequest {
    
    var path: String {
        return "/todos/1"
    }
    
    var method: ESRequestType {
        return .get
    }
}
