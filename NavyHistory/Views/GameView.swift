//
//  GameView.swift
//  NavyHistory
//
//  Created by Christopher Noveron-Nunez on 11/2/22.
//

import SwiftUI

struct GameView: View {
    @StateObject var viewModel = GameViewModel()
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                  .font(.callout)
                  .multilineTextAlignment(.leading)
                  .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
        }
        .background(NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)), isActive: .constant(viewModel.gameIsOver), label: {EmptyView()} ))
        .foregroundColor(.white)
        .navigationBarHidden(true)
        .environmentObject(viewModel)
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
