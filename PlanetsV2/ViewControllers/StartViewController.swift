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
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(planetTapped))
        planetUiImageView.isUserInteractionEnabled = true
        planetUiImageView.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc func planetTapped() {
        let scale: CGFloat = 1.5
        UIView.animate(withDuration: 0.3, delay: 0, options: [.curveEaseInOut], animations: {
            self.planetUiImageView.transform = CGAffineTransform(scaleX: scale, y: scale)
        }) { (finished) in
            UIView.animate(withDuration: 0.3, delay: 0, options: [.curveEaseInOut], animations: {
                self.planetUiImageView.transform = CGAffineTransform.identity
            }, completion: nil)
        }
    }

    
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

