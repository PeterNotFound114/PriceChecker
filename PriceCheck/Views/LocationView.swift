//
//  LocationView.swift
//  PriceCheck
//
//  Created by Peter Lu on 9/26/24.
//

import Foundation
import SwiftUI

struct LocationView: View {
    
    var location: Location
    
    init(_ location: Location){
        self.location = location
    }
    
    var body: some View {
        Section(header: Text(location.name), content: {
          ForEach(location.scans.sorted(by: { $0 < $1 })) {
              scan in
              ScanView(scan)
          }
        })
    }
}
