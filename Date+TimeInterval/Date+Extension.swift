//
//  Date+Extension.swift
//  Date+TimeInterval
//
//  Created by Sheikh Bayazid on 19/8/21.
//

import Foundation

extension Date {
    var millisecondsSince1970:Int64 {
        return Int64((self.timeIntervalSince1970 * 1000.0).rounded())
    }
}
