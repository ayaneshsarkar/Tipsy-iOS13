//
//  Calculator.swift
//  Tipsy
//
//  Created by Ayanesh Sarkar on 28/01/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Calculator {
    var totalBillValue: Double
    var tipValue: Double
    var splitNumberValue: Double
    
    init(totalBillValue: Double?, tipValue: Double?, splitNumberValue: Double?) {
        self.totalBillValue = totalBillValue ?? 0.0
        self.tipValue = tipValue ?? 0.0
        self.splitNumberValue = splitNumberValue ?? 1.0
    }
}
