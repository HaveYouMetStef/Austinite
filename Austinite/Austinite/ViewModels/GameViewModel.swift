//
//  GameViewModel.swift
//  Austinite
//
//  Created by Stef Castillo on 3/14/22.
//

import SwiftUI

class GameViewModel: ObservableObject {
    
//    MARK: published properties
    @Published private var game = Game()
    
//    MARK: Internal Properties
    var currentQuestion: Question {
        game.currentQuestion
    }
    
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        } else {
            return false
        }
    }
    var gameIsOver: Bool {
        game.isOver
    }
    
    var correctGuesses: Int { //This allows the game view model to know the amount of correct guesses
        game.guessCount.correct
    }
    
    var incorrectGuesses: Int { //This allows the game view model to know the amount of INcorrect guesses
        game.guessCount.incorrect
    }
    
//    MARK: - internal methods
    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    
    func displayNextScreen() {
        game.updateGameStatus()
    }
    func color(forOptionIndex optionIndex: Int) -> Color {
        if let guessedIndex = game.guesses[currentQuestion] {
            if guessedIndex != optionIndex {
                return GameColor.main
            } else if guessedIndex == currentQuestion.correctAnswerIndex
            {
                return GameColor.correctGuess
            } else {
                return GameColor.incorrectGuess
            }
        } else {
            return GameColor.main
        }
    }
}

