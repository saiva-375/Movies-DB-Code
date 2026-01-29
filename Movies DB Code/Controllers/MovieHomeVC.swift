//
//  ViewController.swift
//  Movies DB Code
//
//  Created by seshi on 1/29/26.
//

import UIKit

class MovieHomeVC: UIViewController {
    
    // MARK: Property
    var moviesTableView: UITableView?
    let movies = MovieEnum.allCases
    
    // MARK: View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 7/255, green: 80/255, blue: 86/255, alpha: 1.0)
        
        
        moviesTableView = UITableView()
        moviesTableView?.dataSource = self
        moviesTableView?.translatesAutoresizingMaskIntoConstraints = false
        moviesTableView?.register(MovieCell.self, forCellReuseIdentifier: "MovieCell")
        
        if let movieTV = moviesTableView {
            view.addSubview(movieTV)
            
            NSLayoutConstraint.activate([
                movieTV.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                movieTV.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                movieTV.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                movieTV.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                movieTV.heightAnchor.constraint(equalToConstant: 110)
            ])
        }
    }
}

//MARK: Tableview Datasource

extension MovieHomeVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        let movie = movies[indexPath.row].details
        cell.setDataInCells(movie: movie)
        return cell
    }
}
