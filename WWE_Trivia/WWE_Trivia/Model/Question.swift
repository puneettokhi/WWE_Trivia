//
//  Question.swift
//  WWE_Trivia
//
//  Created by Mr. Puneet on 4/18/21.
//

import Foundation

struct Question {
    let text: String
    let answerChoices: [String]
    let answer: String
    
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answerChoices = a
        answer = correctAnswer
    }
}
