//
//  DevViewController.swift
//  PlanetsV2
//
//  Created by user on 09.03.2023.
//

import UIKit

class DevViewController: UIViewController {
    
    private let imageView = UIImageView()
    private var image = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpBackground()
    }
}

// MARK: -  Background setup

extension DevViewController {
    
    private func setUpBackground() {
        image = UIImage(named: "background")!
        
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        
        view.insertSubview(imageView, at: 0)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}
