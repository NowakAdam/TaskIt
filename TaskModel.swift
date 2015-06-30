//
//  TaskModel.swift
//  TaskIt
//
//  Created by Adam Nowak on 30.06.2015.
//  Copyright (c) 2015 Nowak Adam. All rights reserved.
//

import Foundation
import CoreData

@objc(TaskModel)
class TaskModel: NSManagedObject {

    @NSManaged var completed: NSNumber
    @NSManaged var date: NSDate
    @NSManaged var subtask: String
    @NSManaged var task: String

}
