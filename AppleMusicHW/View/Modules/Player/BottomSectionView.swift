//
//  BottomSectionWithButton.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 11.01.2022.
//

import SwiftUI

struct BottomSectionView: View {
    var body: some View {
        HStack(spacing: 10) {
            Button(action: {}) {
                Image(systemName: "quote.bubble")
                    .resizable()
                    .frame(width: 23, height: 23)
                    .foregroundColor(.primary)
            }
            .padding()
            .padding()

            Button(action: {}) {
                Image(systemName: "airplayaudio")
                    .resizable()
                    .frame(width: 23, height: 23)
                    .foregroundColor(.primary)
            }
            .padding()
            .padding()
                
            Button(action: {}) {
                Image(systemName: "list.bullet")
                    .resizable()
                    .frame(width: 23, height: 18)
                    .foregroundColor(.primary)
            }
            .padding()
            .padding()
        }
        .padding()
    }
}
