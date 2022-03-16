//
//  ScoreViewModel.swift
//  Austinite
//
//  Created by Stef Castillo on 3/15/22.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
