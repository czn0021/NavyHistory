//
//  QInfo5.swift
//  NavyHistory
//
//  Created by Christopher Noveron-Nunez on 11/15/22.
//

import SwiftUI

struct QInfo5: View {
    var body: some View {
        Text("In naval terminology, a destroyer is a fast, maneuverable, long-endurance warship intended to escort larger vessels in a fleet. There are around 70 destroyers in the United States Navy, some of which are absolutely massive. The biggest of these comes in with a displacement of 15,995 metric tons and is 600 feet long. What is the name of this ship? (Pictured Below)").lineSpacing(4)
        AsyncImage(url: URL(string: "https://media.wired.com/photos/5955a9a2ad90646d424bb278/master/pass/151207-N-ZZ999-435.jpg")) { image in
            image.resizable()
        } placeholder: {
            ProgressView()
        }
        .frame(width: 400, height: 300)
    }
}

struct QInfo5_Previews: PreviewProvider {
    static var previews: some View {
        QInfo5()
    }
}
