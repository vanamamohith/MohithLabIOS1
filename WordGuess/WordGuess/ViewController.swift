//
//  ViewController.swift
//  WordGuess
//
//  Created by Vanama,Mohith Naga Venkata Sai on 2/22/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var letterLabel: UITextField!
    
    @IBOutlet weak var checkButton: UIButton!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBOutlet weak var searchLetter: UITextField!
    
    var words = [["SWIFT", "Programming Language"],
                 ["DOG", "Animal"],
                 ["CYCLE", "Two wheeler"],
                 ["MACBOOK", "Apple device"]]
    var count = 0;
    var word = ""
    var lettersGuessed = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        checkButton.isEnabled = false;
        hintLabel.text = "Hint: "+words[count][1]
        word = words[count][0]
        for letter in words[count][0]{
            displayLabel.text = displayLabel.text! + "_ "
        }
    }
    
    @IBAction func checkButtonClicked(_ sender: UIButton) {
        var letter = displayLabel.text!
        lettersGuessed = lettersGuessed + letter
         var revealedWord = ""
        for l in word{
            if lettersGuessed.contains(l){
                revealedWord += "\(l)"
            }
            else{
                revealedWord += "_ "
            }
    }
        displayLabel.text = revealedWord
        searchLetter.text = ""
        if(displayLabel.text!.contains("_") == false)
        {
            checkButton.isEnabled = false
            playAgainButton.isHidden = false
        }
        checkButton.isEnabled = false
    }
    
    @IBAction func playbuttonClicked(_ sender: UIButton) {
    }
    
    @IBAction func letterEntered(_ sender: UITextField) {
        var letter = searchLetter.text!
        letter = String(letter.last ?? " ").trimmingCharacters(in: .whitespaces)
        searchLetter.text = letter
        if(letter.isEmpty)
        {
            checkButton.isEnabled = false
        }
        else
        {
            checkButton.isEnabled = true
        }
    }
    

}


