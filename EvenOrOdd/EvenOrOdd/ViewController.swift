//
//  ViewController.swift
//  EvenOrOdd
//
//  Created by Vanama,Mohith Naga Venkata Sai on 2/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Number: UITextField!
    
    @IBOutlet weak var display: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButton(_ sender: UIButton) {
        var num = Int(Number.text!)
        if(num!%2 == 0)
        {
            display.text="\(num!) is Even Number"
        }
        else
        {
            display.text="\(num!) is Odd Number"
        }
        
        
    }
    
}

