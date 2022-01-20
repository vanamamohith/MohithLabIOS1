//
//  ViewController.swift
//  HelloApp
//
//  Created by Vanama,Mohith Naga Venkata Sai on 1/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textOutlet: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonClicked(_ sender: UIButton) {
        //Read the text from the text field
        var enteredName = textOutlet.text!
        //change the display label to Hello, name!
        displayLabel.text = "Hello, \(enteredName)!"
    }
    
}

