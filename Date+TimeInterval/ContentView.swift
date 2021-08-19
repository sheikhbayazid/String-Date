//
//  ContentView.swift
//  Date+TimeInterval
//
//  Created by Sheikh Bayazid on 19/8/21.
//

import SwiftUI

struct ContentView: View {
    @State private var millisecondsSince1970 = Date().millisecondsSince1970
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            Text("\(Date(timeIntervalSince1970: TimeInterval(millisecondsSince1970/1000)))")
            
            Text("Milliseconds Since 1970: \(millisecondsSince1970)")
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Day: \(.getDateString(date: Date(), format: .day))")
                Text("Month: \(.getDateString(date: Date(), format: .month))")
                Text("Year: \(.getDateString(date: Date(), format: .year))")
                Text("Day and Month: \(.getDateString(date: Date(), format: .dayAndMonth))")
                Text("Month and Year: \(.getDateString(date: Date(), format: .monthAndYear))")
                Text("Day, Month and Year: \(.getDateString(date: Date(), format: .dayMonthAndYear))")
            }
        }
        .onAppear(perform: printDate)
    }
    
    private func printDate() {
        print(Date().millisecondsSince1970)
        
        print(Date(timeIntervalSince1970: TimeInterval(millisecondsSince1970/1000)))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
