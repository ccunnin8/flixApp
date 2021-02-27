//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by Corey Cunningham on 2/26/21.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    var movie: [String: Any]!
    
    @IBOutlet var backdropView: UIImageView!
    @IBOutlet var synopsisLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var posterView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        
        synopsisLabel.text = movie["overview"] as? String
        
        synopsisLabel.sizeToFit()

        let baseUrl = "https://image.tmdb.org/t/p/w185"
        
        let baseBackdropUrl = "https://image.tmdb.org/t/p/w780"
        
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        let backdropPath = movie["backdrop_path"] as! String
        
        let backdropUrl = URL(string: baseBackdropUrl + backdropPath)
        posterView.af.setImage(withURL: posterUrl!)
        backdropView.af.setImage(withURL: backdropUrl!)
        
        // Do any additional setup after loading the view.
    }
    

}
