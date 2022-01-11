//
//  MediaPlayer.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 09.10.2021.
//

import SwiftUI

struct MediaPlayerView: View {
    @Binding var expand: Bool
    @State var offset: CGFloat = 0

    @Namespace var animation
    var height = UIScreen.main.bounds.height / 3
    var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    
    var body: some View {
        VStack {
            PortretView(expand: $expand, animation: animation)
            VStack {
                SongTextView(expand: $expand)
                MiddleSectionView()
                BottomSectionView()
            }
            .frame(width: expand ? nil : 0, height: expand ? nil : 0)
            .opacity(expand ? 1 : 0)
                
        }
        
        .frame(maxHeight: expand ?.infinity : 70)
        .background(
            VStack(spacing: 0) {
                PlayerView()
                Divider()
            }.onTapGesture(count: 2) {
                withAnimation(.spring()){expand = true}
            }
        )
        .cornerRadius(expand ? 20 : 0)
        .offset(y: expand ? 0 : -48)
        .offset(y: offset)
        .gesture(DragGesture().onEnded(onEnded(value:)).onChanged(onChanged(value:)))
        .ignoresSafeArea()
    }
    
    
    func onChanged(value: DragGesture.Value) {
        
        if value.translation.height > 0 && expand {
            
            offset = value.translation.height
        }
    }
    
    func onEnded(value: DragGesture.Value) {
        
        withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.95, blendDuration: 0.95)) {
            
            if value.translation.height > height {
                expand = false
            }
            offset = 0
        }
    }
}
