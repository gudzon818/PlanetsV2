//
//  AboutPlanetViewController.swift
//  PlanetsV2
//
//  Created by user on 09.03.2023.
//

import UIKit

class AboutPlanetViewController: UIViewController {
    
    @IBOutlet weak var planetName: UILabel!
    @IBOutlet weak var planetDescription: UILabel!
    
    var planet: Planet!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //planetImage.image = UIImage(named: planet.englishName)
        planetName.text = planet.englishName
        planetDescription.text = planet.description
    }
}
