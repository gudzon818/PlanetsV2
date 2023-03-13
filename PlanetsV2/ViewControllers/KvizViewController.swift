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
        finalResultVC.answers = givenAnswers
    }
    
    // Set up button action after button tapped
    
    @IBAction func answerButtonTapped(_ sender: UIButton) {
        guard let buttonIndex = answersButton.firstIndex(of: sender) else { return }
        
        let currentAnswer = currentAnswers[buttonIndex]
        givenAnswers.append(currentAnswer)
        
        goToNextStep()
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        dismiss(animated: true)
    }
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
