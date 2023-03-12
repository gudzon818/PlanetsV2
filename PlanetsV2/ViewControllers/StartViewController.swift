//
//  ViewController.swift
//  PlanetsV2
//
//  Created by user on 09.03.2023.
//

import UIKit

class StartViewController: UIViewController {
    
    @IBOutlet weak var infoButton: UIButton!
    @IBOutlet weak var planetUiImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonSettings()
        rotatePlanet()
        
    }
   

    
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        guard let tabBarVC = segue.destination as? UITabBarController else { return }
    //        guard let viewControllers = tabBarVC.viewControllers else { return }
    //        viewControllers.forEach { ViewController in
    //            if let planetTableVC = ViewController as? PlanetsTableViewController {
    //                planetTableVC.planets = planets
    //            } else if let kvizVC = ViewController as? KvizViewController {
    //                kvizVC.questions = question
    //
    //            }
    //        }
    //    }
    
    
    //: MARK UIButton and UIImageView settings


    private func buttonSettings() {
        infoButton.layer.cornerRadius = 10
        infoButton.backgroundColor = UIColor(red: 57/255, green: 24/255, blue: 51/255, alpha: 1)
    }
    
    private func rotatePlanet() {
        let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
        rotationAnimation.toValue = NSNumber(value: Double.pi * 2.0)
        rotationAnimation.duration = 5.0
        rotationAnimation.isCumulative = true
        rotationAnimation.repeatCount = Float.greatestFiniteMagnitude
        planetUiImageView.layer.add(rotationAnimation, forKey: "rotationAnimation")
    }
    
        
}
