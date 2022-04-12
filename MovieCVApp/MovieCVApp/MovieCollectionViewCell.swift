//
//  MovieCollectionViewCell.swift
//  MovieCVApp
//
//  Created by Vanama,Mohith Naga Venkata Sai on 4/12/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    func assignMovies(_ movie: Movie){
        imageViewOutlet.image = movie.image
    }
    
}
