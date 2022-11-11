//
//  ChoiceTextView.swift
//  NavyHistory
//
//  Created by Christopher Noveron-Nunez on 11/2/22.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    let accentColor = GameColor.accent
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(accentColor, width: 4)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice Text!")
    }
}
