//
//  QInfo2.swift
//  NavyHistory
//
//  Created by Christopher Noveron-Nunez on 11/15/22.
//

import SwiftUI

struct QInfo2: View {
    var body: some View {
        Text("The SEALS have been around since 1962 and serve as an advanced special operations unit for the Navy and are some of the most highly trained soldiers in the world. But what does SEAL stand for?").lineSpacing(4)
        AsyncImage(url: URL(string: "https://navyseals.com/wp-content/uploads/2013/01/navysealscom-000567.jpg")) { image in
            image.resizable()
        } placeholder: {
            ProgressView()
        }
        .frame(width: 400, height: 300)
    }
}

struct QInfo2_Previews: PreviewProvider {
    static var previews: some View {
        QInfo2()
    }
}
