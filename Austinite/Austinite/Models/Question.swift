//
//  Question.swift
//  Austinite
//
//  Created by Stef Castillo on 2/15/22.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(questionText: "Which is the best bar in Austin?",
                 possibleAnswers: [
                 "Dirty Bills",
                 "Unbar",
                 "Buford's",
                 "Lefty's",
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "Which is the best dog park in Austin?",
                 possibleAnswers: [
                 "Zilker Park",
                 "Audi Shores",
                 "St.Edwards Park",
                 "Norwood Estate Dog Park",
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "Which is the best pizza joint in Austin?",
                 possibleAnswers: [
                 "VIA 313",
                 "Home Slice",
                 "Pinthouse",
                 "Roppolo's",
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "Which is the best sushi spot in Austin?",
                 possibleAnswers: [
                 "TenTen",
                 "Uchi",
                 "Mako",
                 "BarChi Sushi",
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "Which is the best brewery in Austin?",
                 possibleAnswers: [
                 "Austin Beerworks",
                 "Zilker Brewing Company and Taproom",
                 "Jester King",
                 "Pinthouse Brewing",
                 ],
                 correctAnswerIndex: 3),
        Question(questionText: "Which is the best latin restaurant in Austin?",
                 possibleAnswers: [
                 "Matt's El Ranch",
                 "Baby A's",
                 "Gloria's",
                 "El Taquito",
                 ],
                 correctAnswerIndex: 3),
        Question(questionText: "Which is the best food truck in Austin?",
                 possibleAnswers: [
                 "The Halal Gurus",
                 "La tunita 512",
                 "Abu Omar Halal",
                 "Rosita's Al Pastor",
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "Which is the best social spot in Austin?",
                 possibleAnswers: [
                 "West 6th",
                 "Dirty 6th",
                 "East 6th",
                 "Rainey Street",
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "Which is the best Gym in Austin?",
                 possibleAnswers: [
                 "Lift ATX",
                 "Iron Vault",
                 "Equinox",
                 "East Austin Athletic Club",
                 ],
                 correctAnswerIndex: 3),
        Question(questionText: "Which is the best Festival in Austin?",
                 possibleAnswers: [
                 "SXSW",
                 "ACL",
                 "Illfest",
                 "Camp Nowhere",
                 ],
                 correctAnswerIndex: 1),
    ]
}
