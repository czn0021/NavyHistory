//
//  Question.swift
//  NavyHistory
//
//  Created by Christopher Noveron-Nunez on 11/2/22.
//

import Foundation
struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(questionText: "Test Question 1",
                 possibleAnswers: [
                    "Test A 1",
                    "Test A 2",
                    "Test A 3",
                    "Test A 4"
                 ],
                 correctAnswerIndex: 3),
        Question(questionText: "Test Question 2",
                 possibleAnswers: [
                    "Test A 1",
                    "Test A 2",
                    "Test A 3",
                    "Test A 4"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "Test Question 3",
                 possibleAnswers: [
                    "Test A 1",
                    "Test A 2",
                    "Test A 3",
                    "Test A 4"
                 ],
                 correctAnswerIndex: 2),
        Question(questionText: "Test Question 4",
                 possibleAnswers: [
                    "Test A 1",
                    "Test A 2",
                    "Test A 3",
                    "Test A 4"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "Test Question 5",
                 possibleAnswers: [
                    "Test A 1",
                    "Test A 2",
                    "Test A 3",
                    "Test A 4"
                 ],
                 correctAnswerIndex: 2),
        Question(questionText: "Test Question 6",
                 possibleAnswers: [
                    "Test A 1",
                    "Test A 2",
                    "Test A 3",
                    "Test A 4"
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "Test Question 7",
                 possibleAnswers: [
                    "Test A 1",
                    "Test A 2",
                    "Test A 3",
                    "Test A 4"
                 ],
                 correctAnswerIndex: 2),
        Question(questionText: "Test Question 8",
                 possibleAnswers: [
                    "Test A 1",
                    "Test A 2",
                    "Test A 3",
                    "Test A 4"
                 ],
                 correctAnswerIndex: 3),
        Question(questionText: "Test Question 9",
                 possibleAnswers: [
                    "Test A 1",
                    "Test A 2",
                    "Test A 3",
                    "Test A 4"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "Test Question 10",
                 possibleAnswers: [
                    "Test A 1",
                    "Test A 2",
                    "Test A 3",
                    "Test A 4"
                 ],
                 correctAnswerIndex: 3),
    ]
}
