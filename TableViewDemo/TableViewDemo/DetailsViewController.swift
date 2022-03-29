//
//  DetailsViewController.swift
//  TableViewDemo
//
//  Created by Vanama,Mohith Naga Venkata Sai on 3/29/22.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var displayOutlet: UILabel!
    
    var product : Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        displayOutlet.text = "The product \((product?.productName)!) is of \((product?.productCategory)!) category"
    }
    

}
