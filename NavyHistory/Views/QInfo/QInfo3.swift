//
//  QInfo3.swift
//  NavyHistory
//
//  Created by Christopher Noveron-Nunez on 11/15/22.
//

import SwiftUI

struct QInfo3: View {
    var body: some View {
        Text("There has been a (mostly) friendly rivalry between the Army and Navy that culiminates every year in a football game. When did this legendary rivalry start and who leads the series?").lineSpacing(4)
        AsyncImage(url: URL(string: "https://www.armytimes.com/resizer/xemPXHz413SewIG9mwRGqrxCNF4=/1024x0/filters:format(jpg):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/archetype/5WGBFBI2FZG6ZBKL2Z47ODDM5U.jpg")) { image in
            image.resizable()
        } placeholder: {
            ProgressView()
        }
        .frame(width: 400, height: 300)
    }
}

struct QInfo3_Previews: PreviewProvider {
    static var previews: some View {
        QInfo3()
    }
}
