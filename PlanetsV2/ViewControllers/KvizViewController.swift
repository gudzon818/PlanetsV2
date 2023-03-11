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
    private let questionIndex = 0
    private var currentAnswers: [Answer] {
        questions[questionIndex].answers
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func answerButtonTapped(_ sender: UIButton) {
        guard let buttonIndex = answersButton.firstIndex(of: sender) else { return }
        
        let currentAnswer = currentAnswers[buttonIndex]
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
    func updateUI() {
        let currentQuestion = questions[questionIndex]
        questionLabel.text = currentQuestion.title
        titleLabel.text = "Вопрос № \(questionIndex + 1) из \(questions.count)"
        
        showCurrentAnswers()
    }
    
    func showCurrentAnswers() {
        showButtonsAnswers(with: currentAnswers)
    }
    
    func showButtonsAnswers(with answers: [Answer]) {

        for (button, answer) in zip(answersButton, answers) {
            button.setTitle(answer.title, for: .normal)
        }
    }
}
