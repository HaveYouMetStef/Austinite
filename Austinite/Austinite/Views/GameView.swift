//
//  ContentView.swift
//  Austinite
//
//  Created by Stef Castillo on 1/25/22.
//

import SwiftUI

struct GameView: View {
    
    
    @StateObject var viewModel = GameViewModel() //Updated from mainColor to viewModel

    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea() //Updated from mainColor to GameColor.main.ingoresSafeArea()
            VStack{
                Text(viewModel.questionProgressText) //Updated from "1/10" hard code to viewModel.questionProgressText
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
                }
        }
        .foregroundColor(.white)
        .navigationBarHidden(true)
        .environmentObject(viewModel)
        .background(
            NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses,
                                                                            incorrectGuesses: viewModel.incorrectGuesses)),
                           isActive: .constant(viewModel.gameIsOver),
                           label: { EmptyView() })
)}
}

