//
//  ScanView.swift
//  PriceCheck
//
//  Created by Peter Lu on 9/26/24.
//

import Foundation
import SwiftUI

struct ScanView: View {
    
    var scan: PriceScan
    
    init(_ scan: PriceScan){
        self.scan = scan
    }
    var body: some View {
        NavigationLink(destination: ScanDetailsView(scan)){
            HStack {
                Text(scan.item)
                Spacer()
                Text("\(scan.price, specifier: "%.2f")$")
                    .fontWeight(.bold)
            }

        }
    }
}
