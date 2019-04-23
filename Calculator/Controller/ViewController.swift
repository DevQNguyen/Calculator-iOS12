//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var displayLabel: UILabel!
    
    
    private var isFinishedTypingNumber: Bool = true
    

    private var displayValue: Double {
        get {
            guard let number = Double(displayLabel.text!) else {
                fatalError("Cannot convert display text to Double!")
            }
            return number
        }
        set {
            displayLabel.text = String(newValue)
        }
    }
    
    private var calculator = CalculatorLogic()

    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        isFinishedTypingNumber = true
        
        // Convert display text label to Double
//        guard let number = Double(displayLabel.text!) else {
//            fatalError("Cannot convert display text label to Double.")
//        }
        
        
        if let calcMethod = sender.currentTitle {
            
            if calcMethod == "+/-" {
                isFinishedTypingNumber = false
            }
            
            calculator.setNumber(displayValue)
            
            guard let result = calculator.calculate(symbol: calcMethod) else {
                fatalError("The result of the calculation is nil.")
            }
            
            displayValue = result
            
            
        }
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        // if sender is a numButtonPressed, display text
        if let numValue = sender.currentTitle {
            
            if isFinishedTypingNumber {
                if numValue == "0" {
                    return
                }
                if numValue == "." {
                    displayLabel.text = "0."
                } else {
                    displayLabel.text = numValue
                }
                
                isFinishedTypingNumber = false
                
            } else {

                if numValue == "." {
                    if displayLabel.text!.contains(".") {
                        return
                    }
             
                    let isInt = floor(displayValue) == displayValue
                    if !isInt {
                        return
                    }
                }
                displayLabel.text = displayLabel.text! + numValue
            }
        }
        
    }

}
