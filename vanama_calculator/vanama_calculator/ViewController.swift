//
//  ViewController.swift
//  vanama_calculator
//
//  Created by Vanama,Mohith Naga Venkata Sai on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var num1:Double = -1.1
    var num2:Double = -1.1
    var ans:Double = -1.1
    var operation = ""
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func buttonAC(_ sender: UIButton) {
        displayLabel.text  = ""
        num1 = -1.1
        num2 = -1.1
    }
    
    @IBAction func ButtonC(_ sender: UIButton) {
        if(num1 == -1.1)
        {
            num1 = 0;
        }
        else{
        num2 = 0;
        }
        displayLabel.text=""
    }
    
    @IBAction func buttonPlusMinus(_ sender: UIButton) {
        if(operation=="+")
        {
            operation = "-"
        }
        else{
            operation = "+"
        }
        
        displayLabel.text="\(operation)"
    }
    
    @IBAction func buttonBy(_ sender: UIButton) {
        if(displayLabel.text != "")
        {
            num1 = Double(displayLabel.text!)!
        }
        operation = "/"
        displayLabel.text="/"
    }
    
    @IBAction func buttonMulti(_ sender: UIButton) {
        if(displayLabel.text != "")
        {
            num1 = Double(displayLabel.text!)!
        }
        operation = "x"
        displayLabel.text="x"
    }
    
    @IBAction func buttonMinus(_ sender: UIButton) {
        if(displayLabel.text != "")
        {
            num1 = Double(displayLabel.text!)!
        }
        operation = "-"
        displayLabel.text="-"
    }
    
    @IBAction func buttonPlus(_ sender: UIButton) {
        if(displayLabel.text != "")
        {
            num1 = Double(displayLabel.text!)!
        }
        operation = "+"
        displayLabel.text="+"
    }
    
    @IBAction func buttonEquals(_ sender: UIButton) {
        if(num1 != -1.1)
        {
            num2 = Double(displayLabel.text!)!
        }
        if(operation == "+")
        {
            ans = num1 + num2
            displayLabel.text = "\(Int(ans))"
        }
        if(operation == "-")
        {
                ans = num1 - num2
            displayLabel.text = "\(Int(ans))"
        }
        if(operation == "x")
        {
            ans = num1 * num2
            displayLabel.text = "\(Int(ans))"
        }
        if(operation == "/")
        {
            if(num2==0)
            {
                displayLabel.text = "Error"
            }
            else{
            ans = num1 / num2
            displayLabel.text = "\(String(format: "%.5f",ans))"
            }
        }
        if(operation == "%")
        {
            ans = num1.truncatingRemainder(dividingBy: num2)
            displayLabel.text = "\(String(format: "%.1f",ans))"
        }
    }
    
    @IBAction func buttonPercentile(_ sender: UIButton) {
        if(displayLabel.text != "")
        {
        num1 = Double(displayLabel.text!)!
        }
        operation = "%"
        displayLabel.text="%"
    }
    
    @IBAction func buttonDot(_ sender: UIButton) {
        if(displayLabel.text == "+" || displayLabel.text == "-" || displayLabel.text == "%" || displayLabel.text == "x" || displayLabel.text == "/")
        {
            displayLabel.text = "."
        }
        else{
        displayLabel.text = displayLabel.text! + "."
        }
    }
    
    @IBAction func buttonZero(_ sender: UIButton) {
        if(displayLabel.text == "+" || displayLabel.text == "-" || displayLabel.text == "%" || displayLabel.text == "x" || displayLabel.text == "/")
        {
            if(num1 == -1.1)
            {
                displayLabel.text = displayLabel.text! + "0"
            }
            else{
                displayLabel.text = "0"
            }
        }
        else{
        displayLabel.text = displayLabel.text! + "0"
        }
        
    }
    
    @IBAction func buttonOne(_ sender: UIButton) {
        if(displayLabel.text == "+" || displayLabel.text == "-" || displayLabel.text == "%" || displayLabel.text == "x" || displayLabel.text == "/")
        {
            if(num1 == -1.1)
            {
                displayLabel.text = displayLabel.text! + "1"
            }
            else{
                displayLabel.text = "1"
            }
        }
        else{
        displayLabel.text = displayLabel.text! + "1"
        }
        
    }
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        if(displayLabel.text == "+" || displayLabel.text == "-" || displayLabel.text == "%" || displayLabel.text == "x" || displayLabel.text == "/")
        {
            if(num1 == -1.1)
            {
                displayLabel.text = displayLabel.text! + "2"
            }
            else{
                displayLabel.text = "2"
            }
        }
        else{
        displayLabel.text = displayLabel.text! + "2"
        }
    }
    
    @IBAction func buttonThree(_ sender: UIButton) {
        if(displayLabel.text == "+" || displayLabel.text == "-" || displayLabel.text == "%" || displayLabel.text == "x" || displayLabel.text == "/")
        {
            if(num1 == -1.1)
            {
                displayLabel.text = displayLabel.text! + "3"
            }
            else{
                displayLabel.text = "3"
            }
        }
        else{
        displayLabel.text = displayLabel.text! + "3"
        }
    }
    
    @IBAction func buttonFour(_ sender: UIButton) {
        if(displayLabel.text == "+" || displayLabel.text == "-" || displayLabel.text == "%" || displayLabel.text == "x" || displayLabel.text == "/")
        {
            if(num1 == -1.1)
            {
                displayLabel.text = displayLabel.text! + "4"
            }
            else{
                displayLabel.text = "4"
            }
        }
        else{
        displayLabel.text = displayLabel.text! + "4"
        }
    }
    
    @IBAction func buttonFive(_ sender: UIButton) {
        if(displayLabel.text == "+" || displayLabel.text == "-" || displayLabel.text == "%" || displayLabel.text == "x" || displayLabel.text == "/")
        {
            displayLabel.text = "5"
        }
        else{
        displayLabel.text = displayLabel.text! + "5"
        }
    }
    
    @IBAction func buttonSix(_ sender: UIButton) {
        if(displayLabel.text == "+" || displayLabel.text == "-" || displayLabel.text == "%" || displayLabel.text == "x" || displayLabel.text == "/")
        {
            if(num1 == -1.1)
            {
                displayLabel.text = displayLabel.text! + "6"
            }
            else{
                displayLabel.text = "6"
            }
        }
        else{
        displayLabel.text = displayLabel.text! + "6"
        }
    }
    
    @IBAction func buttonSeven(_ sender: UIButton) {
        if(displayLabel.text == "+" || displayLabel.text == "-" || displayLabel.text == "%" || displayLabel.text == "x" || displayLabel.text == "/")
        {
            if(num1 == -1.1)
            {
                displayLabel.text = displayLabel.text! + "7"
            }
            else{
                displayLabel.text = "7"
            }
        }
        else{
        displayLabel.text = displayLabel.text! + "7"
        }
    }
    
    @IBAction func buttonEight(_ sender: UIButton) {
        if(displayLabel.text == "+" || displayLabel.text == "-" || displayLabel.text == "%" || displayLabel.text == "x" || displayLabel.text == "/")
        {
            if(num1 == -1.1)
            {
                displayLabel.text = displayLabel.text! + "8"
            }
            else{
                displayLabel.text = "8"
            }
        }
        else{
        displayLabel.text = displayLabel.text! + "8"
        }
    }
    
    @IBAction func buttonNine(_ sender: UIButton) {
        if(displayLabel.text == "+" || displayLabel.text == "-" || displayLabel.text == "%" || displayLabel.text == "x" || displayLabel.text == "/")
        {
            if(num1 == -1.1)
            {
                displayLabel.text = displayLabel.text! + "9"
            }
            else{
                displayLabel.text = "9"
            }
        }
        else{
        displayLabel.text = displayLabel.text! + "9"
        }
    }
    
}

