//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Quang  Nguyen on 4/16/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class CalculatorLogic {
    
    // Initialize var
    var number: Double
    
    
    init(number: Double) {
        self.number = number
    }
    
    // calculation function
    func calculate(symbol: String) -> Double? {
        if symbol == "+/-" {
            return number * -1
        } else if symbol == "AC" {
            return 0
        } else if symbol == "%" {
            return number * 0.01
        }
        return nil
    }

    
}
