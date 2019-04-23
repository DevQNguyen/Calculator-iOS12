//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Quang  Nguyen on 4/16/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    // Initialize var
    private var number: Double?
    
    // Setter: allows outside input to set number variable
    mutating func setNumber(_ number: Double){
        self.number = number
    }
    
    // calculation function
    func calculate(symbol: String) -> Double? {
        if let n = number {
            if symbol == "+/-" {
                return n * -1
            } else if symbol == "AC" {
                return 0
            } else if symbol == "%" {
                return n * 0.01
            } else if symbol == "+" {
                
            } else if symbol == "=" {
                
            }
        }
        return nil
    }
}
