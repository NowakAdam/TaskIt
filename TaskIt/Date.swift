//
//  Date.swift
//  TaskIt
//
//  Created by Adam Nowak on 29.06.2015.
//  Copyright (c) 2015 Nowak Adam. All rights reserved.
//

import Foundation
import UIKit

class Date {
    
    class func from (#year:Int, month:Int, day:Int) -> NSDate {
    

        var check = CheckiOS()
        if check.checkiOSv()() > 0  {

            let newDate = NSDate()
            let cal = NSCalendar(calendarIdentifier: NSGregorianCalendar)
            let components = cal!.components(.CalendarUnitDay | .CalendarUnitMonth | .CalendarUnitYear, fromDate: newDate)
            let date = cal!.dateFromComponents(components)
            return date!
          }
        else {

            var components = NSDateComponents()
            components.year = year
            components.month = month
            components.day = day
            var gregorianCalendar = NSCalendar(identifier: NSGregorianCalendar)
            var date = gregorianCalendar!.dateFromComponents(components)
            return date!
        }
     
    }
    
    
    class func toString(#date:NSDate) -> String {
    
    let dateStringFormatter = NSDateFormatter()
        dateStringFormatter.dateFormat = "dd.MM.yyyy"
    let dateString = dateStringFormatter.stringFromDate(date)
    
    return dateString
    }
    
    
    
}