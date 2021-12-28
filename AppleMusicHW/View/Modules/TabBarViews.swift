//
//  TabViewBootcamp.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 05.10.2021.
//

import SwiftUI

struct TabBarView: View {
    @State var expand = false
    @Namespace var animation

    var body: some View {
        ZStack (alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            TabView {
                LibraryView()
                    .tabItem {
                        Image(systemName: "music.note.house.fill")
                        Text("Медиатека")
                    }
                RadioView()
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                Text("Search TAB")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            .accentColor(.red)
            MediaPlayerView(expand: $expand, animation: animation)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
