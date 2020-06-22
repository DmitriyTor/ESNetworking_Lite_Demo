//
//  ToDoModel.swift
//  testtestSPM
//
//  Created by Дмитрий Торопкин on 22.06.2020.
//  Copyright © 2020 Dmitriy Toropkin. All rights reserved.
//

import Foundation

class ToDoModel: Codable {
    var id: Int
    var title: String
    var completed: Bool
    var userId: Int
}
