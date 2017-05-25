//
//  Task.swift
//  ToDo2
//
//  Created by fukumoriminori on 2017/05/25.
//  Copyright © 2017年 fukumoriminori. All rights reserved.
//

import UIKit
import RealmSwift

class Task: Object {
    
    dynamic var id = 0
    dynamic var name = ""
    dynamic var finished = false //タスクが終わったか
    dynamic var date = ""//通知する曜日
    dynamic var time = "HH:mm"//通知する時間
    
    override class func primaryKey() -> String {
        return "id"
    }
    // MARK: - Publics
    convenience init(id: Int, name: String, finished: Bool, date: String, time: String) {
        self.init()
        self.id = id
        self.name = name
        self.finished = finished
        self.date = date
        self.time = time
    }
        
}