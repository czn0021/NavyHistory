//
//  QInfo1.swift
//  NavyHistory
//
//  Created by Christopher Noveron-Nunez on 11/15/22.
//

import SwiftUI

struct QInfo1: View {
    var body: some View {
        Text("What realm of the military does the United States Navy operate in?").lineSpacing(4)
        AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Emblem_of_the_United_States_Navy.svg/1200px-Emblem_of_the_United_States_Navy.svg.png")) { image in
            image.resizable()
        } placeholder: {
            ProgressView()
        }
        .frame(width: 300, height: 300)
    }
}

struct QInfo1_Previews: PreviewProvider {
    static var previews: some View {
        QInfo1()
    }
}
