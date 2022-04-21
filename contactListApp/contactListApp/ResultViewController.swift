//
//  ResultViewController.swift
//  contactListApp
//
//  Created by student on 4/19/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    var email : String?
    var phNum : Int?
    
    @IBOutlet weak var emailOutlet: UILabel!
    
    
    @IBOutlet weak var phNumOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailOutlet.text = email
        phNumOutlet.text = "\(phNum!)"
    }


}
