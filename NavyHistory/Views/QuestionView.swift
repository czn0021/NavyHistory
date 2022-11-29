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
      ScrollView {
          VStack {
              Text(question.questionText)
                  .underline()
                  .font(.largeTitle)
                  .bold()
                  .multilineTextAlignment(.leading)
              Spacer()
              switch question.questionInfo {
                case 1:
                  QInfo1()
                case 2:
                  QInfo2()
                case 3:
                  QInfo3()
                case 4:
                  QInfo4()
                default:
                  QInfo5()
              }
              Spacer()
              HStack {
                  ForEach(0..<question.possibleAnswers.count) { answerIndex in
                      Button {
                          viewModel.makeGuess(atIndex: answerIndex)
                          print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                      } label: {
                          ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                              .background(viewModel.color(forOptionIndex: answerIndex))
                              .fixedSize(horizontal: false, vertical: true)
                              .lineLimit(nil)
                              .font(.body)
                      }.disabled(viewModel.guessWasMade) // new line
                  }
              }
              if viewModel.guessWasMade {
                  Spacer()
                  switch question.questionInfo {
                    case 1:
                      AInfo1()
                    case 2:
                      AInfo2()
                    case 3:
                      AInfo3()
                    case 4:
                      AInfo4()
                    default:
                      AInfo5()
                  }
                  Button(action: { viewModel.displayNextScreen() }) {
                      BottomTextView(str: "Next")
                  }
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
