//
//  MediaPlayer.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 09.10.2021.
//

import SwiftUI

struct MediaPlayerView: View {
    var body: some View {
        VStack {
            HStack {
                Image("lp")
                    .resizable()
                    .frame(width: 55, height: 55)
                    .cornerRadius(15)
                    .aspectRatio(contentMode: .fill)
                Text("Linkin Park - Burn It Down")
                    .fontWeight(.regular)
                
                Spacer()
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
            .offset(y: 2)
            .padding()

        }
        .frame(height:65)
        .background(Color.init("LightGray"))
        .offset(y: -50)
    }
}

struct MediaPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MediaPlayerView()
    }
}
