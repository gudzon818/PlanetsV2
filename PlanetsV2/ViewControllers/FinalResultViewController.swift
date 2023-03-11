//
//  FinalResultViewController.swift
//  PlanetsV2
//
//  Created by Ярослав Любиченко on 11.3.2023.
//

import UIKit

class FinalResultViewController: UIViewController {
    
    @IBOutlet weak var showFinalResult: UILabel!
    
    //var counter = 0
    //var questions: [Question]!
    var answers: [Answer] = []
    
    //    private func getAnswerNumber() {
    //
    //        if answers.count == numberOfCorrectAnswers.count {
    //            showFinalResult.text =  "Вы ответили правильно на \(numberOfCorrectAnswers.count) из \(answers.count) вопросов"
    //        }
    //    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //getAnswerNumber()
        //showFinalResult.text =  "Вы ответили правильно на \(counter) вопросов."
        //print(answers)
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
