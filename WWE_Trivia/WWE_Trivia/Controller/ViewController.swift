//
//  ViewController.swift
//  WWE_Trivia
//
//  Created by Puneet Tokhi on 4/18/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var choiceA: UIButton!
    @IBOutlet weak var choiceB: UIButton!
    @IBOutlet weak var choiceC: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizModel = QuizModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        
        let userGotItRight = quizModel.checkAnswer(userAnswer: userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizModel.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        questionLabel.text = quizModel.getQuestionText()
        let choices = quizModel.getChoices()
        choiceA.setTitle(choices[0], for: .normal)
        choiceB.setTitle(choices[1], for: .normal)
        choiceC.setTitle(choices[2], for: .normal)
        progressBar.progress = quizModel.getProgress()
        scoreLabel.text = "Score: \(quizModel.getScore())"
        
        choiceA.backgroundColor = UIColor.clear
        choiceB.backgroundColor = UIColor.clear
        choiceC.backgroundColor = UIColor.clear
    }
}

