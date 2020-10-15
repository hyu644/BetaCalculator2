//
//  ViewController.swift
//  BetaCalculator2
//
//  Created by hyu on R 2/10/15.
//  Copyright © Reiwa 2 hyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController { //number2
   //new
    var numberOnScreen:Double = 0
    var previousNumber:Double = 0
    var operation = 0
    var isPerformingOperation = false
    
    @IBOutlet weak var resultLabel: UILabel! //number1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = ""
    }

    @IBAction func numberPressed(_ sender: UIButton) { //display number3
        
        let tag = (sender).tag
     //new
            if isPerformingOperation == true {
            isPerformingOperation = false
            resultLabel.text = String(tag-1)
            numberOnScreen = Double(resultLabel.text!)!
        }else{
            resultLabel.text = resultLabel.text! + String(tag - 1)
            numberOnScreen = Double(resultLabel.text!)!
       //
        }
    }
    @IBAction func operationPressed(_ sender: UIButton) { //Calculate1 number4
        //new
       let tag1 = (sender).tag          // 11C 14/ 15x 16- 17+ 18=
        if tag1 == 11{
            resultLabel.text = ""
            previousNumber = 0
            numberOnScreen = 0
            operation = 0
        return
        }
        if tag1 == 14{
            isPerformingOperation = true
            previousNumber = Double(resultLabel.text!)!
            resultLabel.text = String(previousNumber)
            operation = tag1
        } else if tag1 == 15{
            isPerformingOperation = true
            previousNumber = Double(resultLabel.text!)!
            resultLabel.text = String(previousNumber)
            operation = tag1
        } else if tag1 == 16{
            isPerformingOperation = true
            previousNumber = Double(resultLabel.text!)!
            resultLabel.text = String(previousNumber)
            operation = tag1
        } else if tag1 == 17{
            isPerformingOperation = true
            previousNumber = Double(resultLabel.text!)!
            resultLabel.text = String(previousNumber)
            operation = tag1
                                     //Calculate 2 number5
        } else if tag1 == 18{
            
            if operation ==  14{
                resultLabel.text = String(previousNumber / numberOnScreen)
            }else if operation == 15{
                resultLabel.text = String(previousNumber * numberOnScreen)
            }else if operation == 16{
                resultLabel.text = String(previousNumber - numberOnScreen)
            }else if operation == 17{
                resultLabel.text = String(previousNumber + numberOnScreen)
      }
    }
  }
}
