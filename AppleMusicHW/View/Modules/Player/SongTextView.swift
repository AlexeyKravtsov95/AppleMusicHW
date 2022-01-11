//
//  MediaPlayerTextView.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 11.01.2022.
//

import SwiftUI

struct SongTextView: View {
    @Binding var expand: Bool

    var body: some View {
        HStack {
            if expand {
                VStack(alignment: .leading) {
                    Text("Burning It Down")
                        .foregroundColor(.black)
                        .bold()
                        .font(.system(size: 22))
                    Text("Linkin Park")
                        .foregroundColor(.black)
                        .font(.system(size: 20))
                }
                .frame(width: 170)
            }

            Spacer(minLength: 0)

            Button(action: {}) {
                Image(systemName: "ellipsis.circle")
                    .font(.title2)
                    .foregroundColor(.primary)
            }
        }
        .padding()
        .padding(.top)
    }
}
