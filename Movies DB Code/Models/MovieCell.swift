//
//  MovieCell.swift
//  Movies DB Code
//
//  Created by seshi on 1/29/26.
//

import UIKit

class MovieCell: UITableViewCell {
    
    var posterImage: UIImageView?
    var titleLabel: UILabel?
    var ratingLabel: UILabel?
    var releaseDateLabel: UILabel?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setUpUI(){
        
        posterImage = UIImageView()
        posterImage?.image = UIImage(systemName: "film")
        posterImage?.tintColor = UIColor(red: 7/255, green: 80/255, blue: 86/255, alpha: 1.0)
        posterImage?.contentMode = .scaleAspectFill
        posterImage?.translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel = UILabel()
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        titleLabel?.textColor = .black
        titleLabel?.textAlignment = .center
        titleLabel?.translatesAutoresizingMaskIntoConstraints = false
        
        ratingLabel = UILabel()
        ratingLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        ratingLabel?.textColor = .black
        ratingLabel?.textAlignment = .left
        ratingLabel?.translatesAutoresizingMaskIntoConstraints = false
        
        releaseDateLabel = UILabel()
        releaseDateLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        releaseDateLabel?.textAlignment = .left
        releaseDateLabel?.translatesAutoresizingMaskIntoConstraints = false
        
        if let poster = posterImage, let title = titleLabel, let rating = ratingLabel, let releaseDate = releaseDateLabel {
            contentView.addSubview(poster)
            contentView.addSubview(title)
            contentView.addSubview(releaseDate)
            contentView.addSubview(rating)
            
            NSLayoutConstraint.activate([
                poster.widthAnchor.constraint(equalToConstant: 50),
                poster.heightAnchor.constraint(equalToConstant: 10),
                poster.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
                poster.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
                
                title.leadingAnchor.constraint(equalTo: poster.trailingAnchor, constant: 10),
                title.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
                title.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
//                title.widthAnchor.constraint(equalToConstant: 50),
//                title.heightAnchor.constraint(equalToConstant: 10),
                
                rating.leadingAnchor.constraint(equalTo: poster.trailingAnchor, constant: 10),
                rating.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
                rating.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 5),
                rating.bottomAnchor.constraint(equalTo: releaseDate.topAnchor, constant: -5),
//                rating.widthAnchor.constraint(equalToConstant: 50),
//                rating.heightAnchor.constraint(equalToConstant: 10),
                
                releaseDate.leadingAnchor.constraint(equalTo: poster.trailingAnchor, constant: 10),
                releaseDate.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
                releaseDate.topAnchor.constraint(equalTo: rating.bottomAnchor, constant: 5),
                releaseDate.bottomAnchor.constraint(equalToSystemSpacingBelow: contentView.bottomAnchor, multiplier: 1)
            ])
                
        }
        
    }
    func setDataInCells(movie: MovieDetails) {
        titleLabel?.text = movie.title ?? ""
        posterImage?.image = UIImage(systemName: movie.posterPath ?? "")
        ratingLabel?.text? = "Rating: \(movie.rating ?? 0.0)"
        releaseDateLabel?.text = "Released: \(movie.releaseDate ?? "")"
    }
}
