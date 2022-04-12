//
//  ViewController.swift
//  MovieCVApp
//
//  Created by Vanama,Mohith Naga Venkata Sai on 4/12/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //create a cell ad typecast with the Movie Collection View Cell
        let cell = collectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        //Assign movies to cell
        cell.assignMovies(movies[indexPath.row])
        //return cell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        titleOutlet.text = "Movie Title: \(movies[indexPath.row].title)"
        yearReleasedOutlet.text = "Year Released: \(movies[indexPath.row].releasedYear)"
        ratingOutlet.text = "Rating: \(movies[indexPath.row].movieRating)"
        revenueOutlet.text = "Box Office revenue: \(movies[indexPath.row].boxOffice)"
    }
    
    @IBOutlet weak var titleOutlet: UILabel!
    
    @IBOutlet weak var yearReleasedOutlet: UILabel!
        
    @IBOutlet weak var ratingOutlet: UILabel!
    
    @IBOutlet weak var revenueOutlet: UILabel!
    
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
        
        titleOutlet.text = " "
        yearReleasedOutlet.text = " "
        ratingOutlet.text = " "
        revenueOutlet.text = " "
    }


}

