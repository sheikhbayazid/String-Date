//
//  String+Date.swift
//  Date+TimeInterval
//
//  Created by Sheikh Bayazid on 19/8/21.
//

import Foundation

public enum DateFormat {
    case day, month, year, dayAndMonth, monthAndYear, dayMonthAndYear
}

public extension String {
    static func getDateString(date: Date, format: DateFormat) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = formatString(format: format)
        return formatter.string(from: date)
    }
    
    private static func formatString(format: DateFormat) -> String {
        switch format {
        case .day:
            return "dd"
        case .month:
            return "MMM"
        case .year:
            return "YYYY"
        case .dayAndMonth:
            return "dd MMM"
        case .monthAndYear:
            return "MMM YYYY"
        case .dayMonthAndYear:
            return "dd MMM YYYY"
        }
    }
}
