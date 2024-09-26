//
//  ScanDetailsView.swift
//  PriceCheck
//
//  Created by Peter Lu on 9/26/24.
//

import SwiftUI

struct ScanDetailsView: View {
    var scan: PriceScan
    
    init(_ scan: PriceScan){
        self.scan = scan
    }
    
    // Parse date string (2020-10-10T16:49:00) into MM/DD/YYYY, HH:MM PM
    func parseDate (_ date: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        let date = dateFormatter.date(from: date)
        dateFormatter.dateFormat = "MM/dd/yyyy, hh:mm a"
        let dateString = dateFormatter.string(from: date!)
        return dateString
    }
    var body: some View {
        Text(scan.item)
            .font(.title)
            .fontWeight(.bold)
        Text("As of: \(parseDate(scan.date))")
        Text("\(scan.price, specifier: "%.2f")$")
    }
}
