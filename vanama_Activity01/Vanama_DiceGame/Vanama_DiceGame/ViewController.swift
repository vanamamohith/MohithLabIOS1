//
//  ViewController.swift
//  Vanama_DiceGame
//
//  Created by Vanama,Mohith Naga Venkata Sai on 2/24/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var player1Text: UITextField!
    @IBOutlet weak var player2Text: UITextField!
    
    @IBOutlet weak var player1Display: UILabel!
    
    @IBOutlet weak var player2Display: UILabel!
    
    @IBOutlet weak var displayText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func diceButton(_ sender: UIButton) {
        let random1 = Int.random(in: 1...6)
        let random2 = Int.random(in: 1...6)
        player1Display.text = "\(player1Text.text!)'s roll is: \(random1)"
        player2Display.text = "\(player2Text.text!)'s roll is: \(random2)"
        if(random1 < random2)
        {
            displayText.text = "\(player2Text.text!) won the game"
        }
        else if(random1 > random2)
        {
            displayText.text = "\(player1Text.text!) won the game"
        }
        else{
            displayText.text = "The game is tie"
        }
    }
}

