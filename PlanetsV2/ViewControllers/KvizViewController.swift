//
//  KvizViewController.swift
//  PlanetsV2
//
//  Created by user on 09.03.2023.
//

import UIKit

class KvizViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var answersButton: [UIButton]!
    
    private let questions = Question.getQuestion()
    private var questionIndex = 0
    //private var count = 0
    private var givenAnswers: [Answer] = []
    private var currentAnswers: [Answer] {
        questions[questionIndex].answers
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let finalResultVC = segue.destination as? FinalResultViewController else { return }
        //finalResultVC.counter = count
        finalResultVC.answers = givenAnswers
    }
    
    // Set up button action after button tapped
    
    @IBAction func answerButtonTapped(_ sender: UIButton) {
        guard let buttonIndex = answersButton.firstIndex(of: sender) else { return }
        
        let currentAnswer = currentAnswers[buttonIndex]
        givenAnswers.append(currentAnswer)
        print(currentAnswers[buttonIndex].status)
        
        //        if currentAnswers[buttonIndex].status == currentAnswer.status {
        //            count += 1
        //            goToNextStep()
        //        } else {
        //            print("Wrong answer!")
        //            goToNextStep()
        //        }
        
        goToNextStep()
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

// MARK: - Set a private methods

extension KvizViewController {
    
    // updateUI for next question
    
    func updateUI() {
        let currentQuestion = questions[questionIndex]
        questionLabel.text = currentQuestion.title
        titleLabel.text = "Вопрос № \(questionIndex + 1) из \(questions.count)"
        
        showCurrentAnswers()
    }
    
    // Set up method current question
    
    func showCurrentAnswers() {
        showButtonsAnswers(with: currentAnswers)
    }
    
    // Method to represent answers
    
    func showButtonsAnswers(with answers: [Answer]) {
        
        for (button, answer) in zip(answersButton, answers) {
            button.setTitle(answer.title, for: .normal)
        }
    }
    
    // Next question and pass result to FinalResultViewController
    
    func goToNextStep() {
        questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI()
            return
        }
        
        performSegue(withIdentifier: "showFinalResult", sender: nil)
    }
}
