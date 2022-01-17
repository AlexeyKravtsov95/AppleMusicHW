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
                    .frame(width: Size.middleSectionViewCircleFrameWidth, height: Size.middleSectionViewCircleFrameHeight)
                    .padding(.trailing, Padding.middleSectionViewCirclePaddingTrailing)

                Capsule()
                    .frame(width: Size.middleSectionViewCapsuleWidth, height: Size.middleSectionViewCapsuleHeight)
            }
        }
        HStack {
            Text("0:00")
                .font(.system(size: FontSize.fontSize12))
                .foregroundColor(.primary)
                .padding(.trailing, Padding.middleSectionViewTextPaddingTrailing)
            Text("-4:12")
                .font(.system(size: FontSize.fontSize12))
                .foregroundColor(.primary)
                .padding(.leading, Padding.middleSectionViewTextPaddingLeading)
        }
        HStack {
            Button(action: {}) {
                Image(systemName: "backward.fill")
                    .resizable()
                    .frame(width: Size.middleSectionImageBackWidth, height: Size.middleSectionImageBackHeight)
                    .foregroundColor(.primary)
            }
            .padding()
            .padding()
            Button(action: {}) {
                Image(systemName: "play.fill")
                    .resizable()
                    .frame(width: Size.middleSectionViewImagePlayWidth, height: Size.middleSectionViewImagePlayHeight)
                    .foregroundColor(.primary)
            }
            .padding()
            .padding()
            Button(action: {}) {
                Image(systemName: "forward.fill")
                    .resizable()
                    .frame(width: Size.middleSectionViewImageForwardWidth, height: Size.middleSectionViewImageForwardHeight)
                    .foregroundColor(.primary)
            }
            .padding()
            .padding()
        }
        
        Spacer(minLength: 0)
        
        HStack(spacing: StackSpacing.Hspacing15) {
            Image(systemName: "speaker.fill")
            Slider(value: $volume).accentColor(.red)
            Image(systemName: "speaker.wave.2.fill")
        }
        .padding()
        .padding()
    }
}
