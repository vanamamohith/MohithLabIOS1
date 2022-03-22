//
//  ViewController.swift
//  DiscountAppMultiController
//
//  Created by Vanama,Mohith Naga Venkata Sai on 3/22/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var amountOutlet: UITextField!
    
    
    @IBOutlet weak var discountOutlet: UITextField!
    
    var priceAfterDiscount = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func CalcDiscountButtonClicked(_ sender: UIButton) {
        var amount = Double(amountOutlet.text!)
        
        var discount = Double(discountOutlet.text!)
        
        priceAfterDiscount = amount! - (amount! * discount!/100)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultSegue"{
            //make ResultViewController as a destination
            var destination = segue.destination as! ResultViewController
            destination.amount = amountOutlet.text!
            destination.discRate = discountOutlet.text!
            destination.priceAfterDisc = String(priceAfterDiscount)
            
        }
    }
    

}

