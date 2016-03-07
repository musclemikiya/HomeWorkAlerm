//
//  Task.swift
//  HouseWorkAlarm
//
//  Created by MikiyaFukuda on 2016/03/07.
//  Copyright © 2016年 MikiyaFukuda. All rights reserved.
//

import RealmSwift
import Foundation

class Task: Object {
    // タスク名
    dynamic var name = ""
    // 繰り返しの間隔日数
    dynamic var interval =  0
    // 開始日
    dynamic var startDate = NSDate(timeIntervalSinceNow: 0)
}
