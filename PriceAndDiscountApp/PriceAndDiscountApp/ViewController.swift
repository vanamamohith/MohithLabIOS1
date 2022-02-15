//
//  ViewController.swift
//  PriceAndDiscountApp
//
//  Created by Vanama,Mohith Naga Venkata Sai on 2/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amount: UITextField!
    @IBOutlet weak var discount: UITextField!
    @IBOutlet weak var displayText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButton(_ sender: UIButton) {
        var price1 = Double(amount.text!)
        var discount1 = Double(discount.text!)
        var discountrate = discount1!/100
        var total: Double = (1-discountrate)*price1!
        displayText.text = "Amount after discount : \(total)"
        
        
    }
    
}

