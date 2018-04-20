//
//  TimerUtility.swift
//  Stack
//
//

import Foundation

extension Date {
    var nanosecondsSince1970:Int {
        return Int((self.timeIntervalSince1970 * 1000000000.0).rounded())
    }
    
    init(nanoseconds:Int) {
        self = Date(timeIntervalSince1970: TimeInterval(nanoseconds / 1000000000))
    }
}
