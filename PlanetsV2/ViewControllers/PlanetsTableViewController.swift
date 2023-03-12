//
//  PlanetsTableViewController.swift
//  PlanetsV2
//
//  Created by user on 09.03.2023.
//

import UIKit

class PlanetsTableViewController: UITableViewController {
    
    private let listOfPlanet = Planet.getPlanet()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 90
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let aboutPlanetVC = segue.destination as? AboutPlanetViewController
        aboutPlanetVC?.planet = sender as? Planet
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        aboutPlanetVC?.planet = listOfPlanet[indexPath.row]
    }
}

// MARK: - UITableViewDataSource

extension PlanetsTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listOfPlanet.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let planetCell = listOfPlanet[indexPath.row]
        content.text = planetCell.name
        content.secondaryText = planetCell.englishName
        content.image = UIImage(named: planetCell.name)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        return cell
    }
}
