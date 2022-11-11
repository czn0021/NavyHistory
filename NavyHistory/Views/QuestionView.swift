//
//  QuestionView.swift
//  NavyHistory
//
//  Created by Christopher Noveron-Nunez on 11/2/22.
//

import SwiftUI

struct QuestionView: View {
 
  @EnvironmentObject var viewModel: GameViewModel
  let question: Question
 
  var body: some View {
    VStack {
      Text(question.questionText)
        .font(.largeTitle)
        .bold()
        .multilineTextAlignment(.leading)
      Spacer()
        HStack {
                ForEach(0..<question.possibleAnswers.count) { answerIndex in
                  Button {
                      viewModel.makeGuess(atIndex: answerIndex)
                    print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                  } label: {
                    ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                          .background(viewModel.color(forOptionIndex: answerIndex))
                  }
                  .disabled(viewModel.guessWasMade) // new line
                }
        }
        if viewModel.guessWasMade {
            Button(action: { viewModel.displayNextScreen() }) {
                BottomTextView(str: "Next")
            }
        }
    }
  }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
      QuestionView(question: Game().currentQuestion)
    }
}
