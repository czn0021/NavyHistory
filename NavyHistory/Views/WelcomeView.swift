//
//  WelcomeView.swift
//  NavyHistory
//
//  Created by Christopher Noveron-Nunez on 11/2/22.
//

import SwiftUI

struct WelcomeView: View {
    let accentColor = GameColor.accent
    let mainColor = GameColor.main
    
    var body: some View {
        NavigationView {
            ZStack {
                mainColor.ignoresSafeArea()
                VStack {
                        VStack(alignment: .leading, spacing: 0) {
                            HStack {
                                Spacer()
                                Text("Navy History")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .dynamicTypeSize(/*@START_MENU_TOKEN@*/.accessibility4/*@END_MENU_TOKEN@*/)
                                
                                Spacer()
                            }
                            Spacer()
                                .frame(height: 15)
                            HStack {
                                Spacer()
                                    .frame(width: 60)
                                Text("By Christopher Noveron-Nunez, Jacob Blair, and Zhenhua Qiao")
                                    .font(.subheadline)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                Spacer()
                                    .frame(width: 60)
                            }
                            Spacer()
                            HStack {
                                Spacer()
                                Text("Read about the topics and then select the correct answers to the respective question.")
                                .font(.largeTitle)
                                .bold()
                                .multilineTextAlignment(.center)
                                .padding()
                                Spacer()
                            }
                        }
                        Spacer()
                        .frame(height: 200)
                        NavigationLink(
                            destination: GameView(),
                            label: {
                                HStack {
                                    Spacer()
                                    Text("Okay, let's go!")
                                        .font(.body)
                                        .bold()
                                        .padding()
                                    Spacer()
                                }.background(accentColor)
                            })
                }
                .foregroundColor(.white)
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
