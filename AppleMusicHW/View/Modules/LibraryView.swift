//
//  LibraryView.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 05.10.2021.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
            NavigationView {
                ZStack {
                    VStack(alignment: .center){
                        Text("Ищете свою музыку?")
                            .font(.title)
                            .bold()
                        VStack {
                            Text("Здесь появится купленная Вами в iTunes Store музыка.")
                                .font(.title3)
                                .foregroundColor(.gray)
                                .multilineTextAlignment(.center)
                        }
                        .font(.subheadline)
                    }
                    .navigationTitle("Медиатека")
                    .navigationBarItems(trailing: HStack {
                        Button(action: {}, label: {
                            Text("Править")
                                .foregroundColor(.red)
                        })
                })
            }
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
