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
        view.backgroundColor = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)
        //planetImage.image = UIImage(named: planet.englishName)
        planetName.text = planet.englishName
        planetDescription.text = planet.description
        planetDescription.textColor = .white
        planetName.textColor = .white
    }
}
