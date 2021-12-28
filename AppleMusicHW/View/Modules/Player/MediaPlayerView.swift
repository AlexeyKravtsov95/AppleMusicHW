//
//  MediaPlayer.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 09.10.2021.
//

import SwiftUI

struct MediaPlayerView: View {
    @Binding var expand: Bool
    
    @State var volume: CGFloat = 0
    @State var offset: CGFloat = 0
    
    var animation: Namespace.ID
    var height = UIScreen.main.bounds.height / 3
    var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    
    
    var body: some View {
        VStack {
            Capsule()
                .fill(Color.gray)
                .frame(width: expand ? 60 : 0, height: expand ? 6 : 0)
                .opacity(expand ? 1 : 0)
                .padding(.top, expand ? safeArea?.top : 0)
                .padding(.vertical, expand ? 30 : 0)
            HStack(spacing: 15) {
                if expand {
                    Spacer(minLength: 0)
                }
                Image("lp")
                    .resizable()
                    .shadow(color: .gray, radius: 15, x: 0.0, y: 5.0)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: expand ? height : 55, height: expand ? height : 55)
                    .cornerRadius(15)
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
            VStack {
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
                        
                }.padding()
            }
            .frame(width: expand ? nil : 0, height: expand ? nil : 0)
            .opacity(expand ? 1 : 0)
                
        }
        
        .frame(maxHeight: expand ?.infinity : 70)
        .background(
            VStack(spacing: 0) {
                PlayerView()
                Divider()
            }.onTapGesture(perform: {
                withAnimation(.spring()){expand = true}
            })
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
