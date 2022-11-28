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
            .font(.system(size: 12))
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(accentColor, width: 4)
            .fixedSize(horizontal: false, vertical: true)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice Text!")
    }
}
