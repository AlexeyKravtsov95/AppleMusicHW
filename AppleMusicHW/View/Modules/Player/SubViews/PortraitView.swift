//
//  SwiftUIView.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 11.01.2022.
//

import SwiftUI

struct PortraitView: View {
    @Binding var expand: Bool
    var height = UIScreen.main.bounds.height / 3
    var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    var animation: Namespace.ID
    
    var body: some View {
        Capsule()
            .fill(Color.gray)
            .frame(width: expand ? Size.portretViewCapsuleFrameWidth : 0, height: expand ? Size.portretViewCapsuleFrameHeight : 0)
            .opacity(expand ? 1 : 0)
            .padding(.top, expand ? safeArea?.top : 0)
            .padding(.vertical, expand ? Padding.portretViewPaddingVertical : 0)
        HStack(spacing: StackSpacing.Hspacing15) {
            if expand {
                Spacer(minLength: 0)
            }
            Image("lp")
                .resizable()
                .shadow(color: .gray, radius: 15, x: 0.0, y: 5.0)
                .aspectRatio(contentMode: .fill)
                .frame(width: expand ? height : Size.portretViewImageFrameWidth, height: expand ? height : Size.portretViewImageFrameHeight)
                .cornerRadius(Size.radius15)
            if !expand {
                Text("Linkin Park - Burn It Down")
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                    .matchedGeometryEffect(id: "Label", in: animation)
            }
            Spacer(minLength: 0)
            if !expand {
                Button(action: {}, label: {
                    Image(systemName: "play.fill")
                        .font(.title2)
                        .foregroundColor(.black)
                        .padding([.trailing], 10)
                })
                Button(action: {}, label: {
                    Image(systemName: "forward.fill")
                        .font(.title2)
                        .foregroundColor(.gray)
                })
            }
        }
        .padding(.horizontal)
    }
}
