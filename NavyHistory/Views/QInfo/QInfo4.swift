//
//  QInfo4.swift
//  NavyHistory
//
//  Created by Christopher Noveron-Nunez on 11/15/22.
//

import SwiftUI

struct QInfo4: View {
    var body: some View {
        Text("The Navy was first formed in 1775 for use during The Revolutionary War (although it was later temporarily disbanded). Which founding father was a huge proponent for a navy?").lineSpacing(4)
        AsyncImage(url: URL(string: "https://www.history.navy.mil/content/history/nhhc/browse-by-topic/wars-conflicts-and-operations/american-revolution/_jcr_content/body/media_asset/image.img.jpg/1608654952689.jpg")) { image in
            image.resizable()
        } placeholder: {
            ProgressView()
        }
        .frame(width: 400, height: 300)
    }
}

struct QInfo4_Previews: PreviewProvider {
    static var previews: some View {
        QInfo4()
    }
}
