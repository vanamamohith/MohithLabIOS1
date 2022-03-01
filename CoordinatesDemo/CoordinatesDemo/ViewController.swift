//
//  ViewController.swift
//  CoordinatesDemo
//
//  Created by Vanama,Mohith Naga Venkata Sai on 3/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageViewOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let minx = ImageViewOutlet.frame.minX
        let miny = ImageViewOutlet.frame.minY
        print(minx, ",",miny)
        
        let maxX = ImageViewOutlet.frame.maxX
        let maxY = ImageViewOutlet.frame.maxY
        print(maxX, ",",maxY)
        
        let midx = ImageViewOutlet.frame.midX
        let midy = ImageViewOutlet.frame.midY
        print(midx,",",midy)
        
        //move the imageview to the upper left corner. 0,0
        ImageViewOutlet.frame.origin.x = 0
        ImageViewOutlet.frame.origin.y = 0
        
        //move the imageview to the upper right corner. 314,0
        ImageViewOutlet.frame.origin.x = 314
        ImageViewOutlet.frame.origin.y = 0
        
        //move the imageview to the lower left corner. 0,314
        ImageViewOutlet.frame.origin.x = 0
        ImageViewOutlet.frame.origin.y = 796
        
        //move the imageview to the lower right corner. 314,796
        ImageViewOutlet.frame.origin.x = 314
        ImageViewOutlet.frame.origin.y = 796
        
        //move the imageview to the center of the screen.((414/2)-50,(968/2)-50)
        ImageViewOutlet.frame.origin.x = 157
        ImageViewOutlet.frame.origin.y = 398
    }


}

