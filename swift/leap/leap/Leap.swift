//
//  Leap.swift
//  leap
//
//  Created by Pietro Caselani on 21/06/16.
//  Copyright © 2016 Pietro Caselani. All rights reserved.
//

import Foundation

struct Year {
	let isLeapYear: Bool
	
	init(calendarYear year: Int) {
		isLeapYear = (year % 400 == 0) || (year % 4 == 0 && (year % 100 != 0 && year % 400 != 0))
	}
}