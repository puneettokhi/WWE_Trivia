//
//  QuizModel.swift
//  WWE_Trivia
//
//  Created by Mr. Puneet on 4/18/21.
//

import Foundation

struct QuizModel {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
                Question(q: "Who won the 2006 Royal Rumble?", a: ["John Cena", "Batista", "Triple H"], correctAnswer: "John Cena"),
                Question(q: "Who retired Ric Flair at Wrestlemania?", a: ["Shawn Michaels", "Randy Orton", "John Cena"], correctAnswer: "Shawn Michaels"),
                Question(q: "Who ended the Undertaker's Wrestemania undefeated streak?", a: ["Triple H", "CM Punk", "Brock Lesnar"], correctAnswer: "Brock Lesnar"),
                Question(q: "After how many years did Bobby Lashley win WWE Title?", a: ["18", "16", "17"], correctAnswer: "16"),
                Question(q: "Who won the first ever WWE Women's Tag Titles?", a: ["The Boss & Hug Connection", "Nia Jax & Tamina", "Natalya & Beth Phoenix"], correctAnswer: "The Boss & Hug Connection"),
                Question(q: "Who beat Austin and The Rock in the same night?", a: ["Booker-T ", "Chris Jericho", "Kane"], correctAnswer: "Chris Jericho"),
                Question(q: "Who won the first ever WWE Women's Championship?", a: ["Wendy Richter", "Mae Young", "Fabulous Moolah"], correctAnswer: "Wendy Richter"),
                Question(q: "How many times did John Cena win WWE World Championships?", a: ["14", "15", "16"], correctAnswer: "16"),
                Question(q: "What is Undertaker's real name?", a: ["Mark Collins", "Mark Callaway", "Mark Storm"], correctAnswer: "Mark Callaway"),
                Question(q: "Where is WWE Headquarter located?", a: ["Stamford,CT", "Greenwich,CT,", "Hartford,CT"], correctAnswer: "Stamford,CT"),
                Question(q: "Who was the first IWGP Intercontinental Champion?", a: ["Shinsuke Nakamura", "Michael Elgin", "MVP"], correctAnswer: "MVP"),
                Question(q: "Who ended Goldberg's undefeated streak?", a: ["Kevin Nash", "Sting", "Hulk Hogan"], correctAnswer: "Kevin Nash")

    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
     func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getChoices() -> [String] {
        return quiz[questionNumber].answerChoices
    }
}

