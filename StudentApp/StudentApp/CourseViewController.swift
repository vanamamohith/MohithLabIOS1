//
//  CourseViewController.swift
//  StudentApp
//
//  Created by Vanama,Mohith Naga Venkata Sai on 3/24/22.
//

import UIKit

class CourseViewController: UIViewController {
    
    
    
    @IBOutlet weak var courseOutlet: UILabel!
    //This variable will hold the courses of the student,
    var coursesArray:[Course] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //when this screen loads we will loop through the courses and display them
        for course in coursesArray {
            courseOutlet.text = courseOutlet.text! + course.title + "-" + course.sem + "\n"
        }
    }
    

   

}
