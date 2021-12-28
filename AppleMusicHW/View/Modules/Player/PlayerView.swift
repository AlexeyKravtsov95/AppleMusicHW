//
//  PlayerView.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 28.12.2021.
//

import SwiftUI

struct PlayerView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterial))
        
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
    }
}
