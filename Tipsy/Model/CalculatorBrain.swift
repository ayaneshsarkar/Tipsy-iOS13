//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Ayanesh Sarkar on 28/01/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var calculator = Calculator(totalBillValue: nil, tipValue: nil, splitNumberValue: nil)
    
    func getTipValue() -> String {
        return String(format: "%.0f", calculator.tipValue)
    }
    
    func getSplitNumber() -> Double {
        return calculator.splitNumberValue
    }
    
    func getSplitNumberValue() -> String {
        return String(format: "%.0f", calculator.splitNumberValue)
    }
    
    mutating func setTotalValue(value: String) -> Void {
        calculator.totalBillValue = Double(value) ?? 0.0
    }
    
    mutating func setTipValue(value: Double) -> Void {
        calculator.tipValue = value
    }
    
    mutating func setSplitNumberValue(value: Double) -> Void {
        calculator.splitNumberValue = value
    }
    
    func calculateSplitPct() -> String {
        let pctValueOfTip: Double = (calculator.tipValue / 100.0) * (calculator.totalBillValue)
        let calculatedTotalBill = calculator.totalBillValue + pctValueOfTip
        let calculatedSplitUpValue = calculatedTotalBill / calculator.splitNumberValue
        
        return String(format: "%.2f", calculatedSplitUpValue)
    }
}
