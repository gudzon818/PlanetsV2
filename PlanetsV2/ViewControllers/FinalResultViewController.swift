//
//  FinalResultViewController.swift
//  PlanetsV2
//
//  Created by Ярослав Любиченко on 11.3.2023.
//

import UIKit

class FinalResultViewController: UIViewController {
    
    @IBOutlet weak var showFinalResult: UILabel!

    private var count = 0
    var answers: [Answer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateResult()
        showFinalResult.text = "Ваш результат равен - \(count)."
    }
    
    private func calculateResult() {
        for answer in answers {
            if answer.status == true {
                count += 1
            }
            continue
        }
    }
}
