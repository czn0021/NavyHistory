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
    let questionInfo: Int
    
    static var allQuestions = [
        Question(questionText: "Question 1",
                 possibleAnswers: [
                    "The Water",
                    "The Land",
                    "The Air",
                    "All of the above"
                 ],
                 correctAnswerIndex: 3,
                 questionInfo: 1),
        Question(questionText: "Question 2",
                 possibleAnswers: [
                    "...Seals",
                    "Specialized Elite Armed Lookouts",
                    "Sea, Air, And Land",
                    "Selectively Educated Advanced Leads"
                 ],
                 correctAnswerIndex: 2,
                 questionInfo: 2),
        Question(questionText: "Question 3",
                 possibleAnswers: [
                    "1890/Navy",
                    "1915/Army",
                    "1927/Navy",
                    "1878/Army"
                 ],
                 correctAnswerIndex: 0,
                 questionInfo: 3),
        Question(questionText: "Question 4",
                 possibleAnswers: [
                    "John Hancock",
                    "George Washington",
                    "Charles Lee",
                    "Alexander Hamilton"
                 ],
                 correctAnswerIndex: 1,
                 questionInfo: 4),
        Question(questionText: "Test Question 5",
                 possibleAnswers: [
                    "USS Zumwalt",
                    "USS Bainbridge",
                    "USS Sampson",
                    "USS Caldwell"
                 ],
                 correctAnswerIndex: 0,
                 questionInfo: 5)
    ]
}
