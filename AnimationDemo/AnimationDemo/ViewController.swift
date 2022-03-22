//
//  ViewController.swift
//  AnimationDemo
//
//  Created by Vanama,Mohith Naga Venkata Sai on 3/17/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageOutlet: UIImageView!
    @IBOutlet weak var happyOutlet: UIButton!
    
    @IBOutlet weak var sadOutlet: UIButton!
    
    @IBOutlet weak var angryOutlet: UIButton!
    
    @IBOutlet weak var shakeMeOutlet: UIButton!
    
    @IBOutlet weak var showOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        //move all the components outside of the view.
        imageOutlet.frame.origin.x = view.frame.maxX
        happyOutlet.frame.origin.x = view.frame.maxX
        sadOutlet.frame.origin.x = view.frame.maxX
        angryOutlet.frame.origin.x = view.frame.maxX
        shakeMeOutlet.frame.origin.x = view.frame.maxX
    }

    @IBAction func HappyButton(_ sender: UIButton) {
        animateImage("Happy")
    }
    
    @IBAction func SadButton(_ sender: UIButton) {
        animateImage("sad")
    }
    
    @IBAction func angryButton(_ sender: UIButton) {
        animateImage("angry")
    }
    
    @IBAction func ShakeMeButton(_ sender: UIButton) {
        //Rectangle r = new Rectangle(x,y,w,h)
        
        var w = imageOutlet.frame.width
        w += 40
        var h = imageOutlet.frame.height
        h += 40
        var x = imageOutlet.frame.origin.x - 20
        var y = imageOutlet.frame.origin.y - 20
        
        var largerFrame = CGRect(x: x, y: y, width: w, height: h)
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, animations: {
            self.imageOutlet.frame = largerFrame
        })
    }
    
    @IBAction func ShowButton(_ sender: UIButton) {
        
        UIView.animate(withDuration: 1,animations: {
            self.imageOutlet.center.x = self.view.center.x
            self.happyOutlet.center.x = self.view.center.x
            self.sadOutlet.center.x = self.view.center.x
            self.angryOutlet.center.x = self.view.center.x
            self.shakeMeOutlet.center.x = self.view.center.x
            self.showOutlet.isEnabled = false
        })
        
    }
    func animateImage(_ imageName: String)
    {
        //Image as opaque
        UIView.animate(withDuration: 1, animations: {
            self.imageOutlet.alpha = 0
        })
        
        UIView.animate(withDuration: 1, delay: 0.2,animations: {
            //Make it transparent (using alpha)
            self.imageOutlet.alpha = 1
            self.imageOutlet.image = UIImage(named: imageName)
        })
    }
}

