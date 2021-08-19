//
//  Date_TimeIntervalTests.swift
//  Date+TimeIntervalTests
//
//  Created by Sheikh Bayazid on 19/8/21.
//

import XCTest
@testable import Date_TimeInterval

class Date_TimeIntervalTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    private let date = Date(timeIntervalSince1970: TimeInterval(1629346343143/1000)) // 19 Aug 2021
    
    func test_Day() {
        let expectedDay = "19"
        let day = String.getDateString(date: date, format: .day)
        XCTAssertEqual(day, expectedDay)
    }
    
    func test_month() {
        let expectedMonth = "Aug"
        let month = String.getDateString(date: date, format: .month)
        XCTAssertEqual(month, expectedMonth)
    }
    
    func test_year() {
        let expectedYear = "2021"
        let year = String.getDateString(date: date, format: .year)
        XCTAssertEqual(year, expectedYear)
    }
    
    func test_day_and_month() {
        let expectedDayAndMonth = "19 Aug"
        let dayAndMonth = String.getDateString(date: date, format: .dayAndMonth)
        XCTAssertEqual(dayAndMonth, expectedDayAndMonth)
    }
    
    func test_month_and_year() {
        let expectedMonthAndYear = "Aug 2021"
        let monthAndYear = String.getDateString(date: date, format: .monthAndYear)
        XCTAssertEqual(monthAndYear, expectedMonthAndYear)
    }
    
    func test_day_month_and_year() {
        let expectedDayMonthYear = "19 Aug 2021"
        let dayMonthAndYear = String.getDateString(date: date, format: .dayMonthAndYear)
        XCTAssertEqual(dayMonthAndYear, expectedDayMonthYear)
    }
    
}
