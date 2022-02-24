//
//  ViewController.swift
//  Vanama_SearchApp
//
//  Created by Vanama,Mohith Naga Venkata Sai on 2/23/22.
//

import UIKit

class ViewController: UIViewController {
    var actors = [["ironman","drstranger","hulk","wanda","captainamerica"],["ironman","drstranger","hulk","wanda","captainamerica"]]
    var animals = [["lion","chettah","elephant","monkey","tiger"],["lion","chettah","elephant","monkey","tiger"]]
    var flowers = [["rose","lily","sunflower","cassia","jasmine"],["rose","lily","sunflower","cassia","jasmine"]]
    var search = ["actors","animals","flowers"]
    var imgNumber = 0
    

    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var topicInfoText: UITextView!
    
    @IBOutlet weak var searchBtn: UIButton!
    
    @IBOutlet weak var prevBtn: UIButton!
    
    @IBOutlet weak var nextBtn: UIButton!
    
    @IBOutlet weak var resetBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBtn.isEnabled = false
        resultImage.image = UIImage(named: "welcome")
        prevBtn.isHidden = true
        nextBtn.isHidden = true
        resetBtn.isHidden = true
        searchBtn.backgroundColor = .lightGray
        
    }


    
    @IBAction func searchButtonAction(_ sender: UIButton) {
        for sch in search{
            if(sch == searchTextField.text!)
            {
                
                  imgAndTextUpdate(imgNumber)
                  nextBtn.isHidden = false
                  prevBtn.isHidden = false
                  searchBtn.isEnabled = false
                  searchBtn.backgroundColor = .lightGray
                  searchTextField.text = ""
                  resetBtn.isEnabled = true
                  
           
           }
        }
    }
    
    @IBAction func searchTextAction(_ sender: UITextField) {
       if(searchTextField.text != "")
        {
           searchBtn.backgroundColor = .systemBlue
           searchBtn.isEnabled = true
       }
    }
    
    @IBAction func showPrevImagesBtn(_ sender: UIButton) {
        imgNumber = imgNumber-1
        imgAndTextUpdate(imgNumber)
    }
    
    @IBAction func showNextImgBtn(_ sender: UIButton) {
        imgNumber = imgNumber+1
        imgAndTextUpdate(imgNumber)
        
    }
    

    @IBAction func resetButton(_ sender: UIButton) {
        imgNumber = 0
        searchBtn.isEnabled = false
        resultImage.image = UIImage(named: "welcome")
        prevBtn.isHidden = true
        nextBtn.isHidden = true
        resetBtn.isEnabled = false
        searchBtn.backgroundColor = .lightGray
        topicInfoText.text = ""
        resetBtn.isHidden = true
        
    }
    func imgAndTextUpdate(_ imageNumber: Int){
        resultImage.image = UIImage(named: actors[0][imgNumber])
        topicInfoText.text = actors[1][imgNumber]
        if(imgNumber == 0)
        {
            prevBtn.isEnabled = false
            prevBtn.backgroundColor = .lightGray
        }
        else{
            prevBtn.isEnabled = true
            prevBtn.backgroundColor = .systemBlue
        }
        if(imgNumber == 4)
        {
            nextBtn.isEnabled = false
            nextBtn.backgroundColor = .lightGray
        }
        else{
            nextBtn.isEnabled = true
            nextBtn.backgroundColor = .systemBlue
        }
        resetBtn.isHidden = false
    }
    
}

