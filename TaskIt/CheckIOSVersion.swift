//
//  CheckIOSVersion.swift
//  TaskIt
//
//  Created by Adam Nowak on 29.06.2015.
//  Copyright (c) 2015 Nowak Adam. All rights reserved.
//

import Foundation
import UIKit

struct CheckiOS {
    
    func checkiOSv() ()-> Int {
    var systemVersion = UIDevice.currentDevice().systemVersion;
    var sysToInt = "\(systemVersion)".toInt()
    //iOS condition for iOS less than 8.0
    if sysToInt < 8 {
            return 1
    }
        else {
            return 0
        }
    }
}