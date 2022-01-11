//
//  MiddleSectionView.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 11.01.2022.
//

import SwiftUI

struct MiddleSectionView: View {
    @State var volume: CGFloat = 0
    @State var offset: CGFloat = 0
    
    var body: some View {
        HStack {
            ZStack {
                Circle()
                    .frame(width: 7, height: 10)
                    .padding(.trailing, 330)

                Capsule()
                    .frame(width: 330, height: 2)
            }
        }
        HStack {
            Text("0:00")
                .font(.system(size: 12))
                .foregroundColor(.primary)
                .padding(.trailing, 130)
            Text("-4:12")
                .font(.system(size: 12))
                .foregroundColor(.primary)
                .padding(.leading, 130)
        }
        HStack {
            Button(action: {}) {
                Image(systemName: "backward.fill")
                    .resizable()
                    .frame(width: 45, height: 25)
                    .foregroundColor(.primary)
            }
            .padding()
            .padding()
            Button(action: {}) {
                Image(systemName: "play.fill")
                    .resizable()
                    .frame(width: 35, height: 40)
                    .foregroundColor(.primary)
            }
            .padding()
            .padding()
            Button(action: {}) {
                Image(systemName: "forward.fill")
                    .resizable()
                    .frame(width: 45, height: 25)
                    .foregroundColor(.primary)
            }
            .padding()
            .padding()
        }
        
        Spacer(minLength: 0)
        
        HStack(spacing: 15) {
            Image(systemName: "speaker.fill")
            Slider(value: $volume).accentColor(.red)
            Image(systemName: "speaker.wave.2.fill")
        }
        .padding()
        .padding()
    }
}
