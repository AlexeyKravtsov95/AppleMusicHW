//
//  LibraryView.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 05.10.2021.
//

import SwiftUI

struct LibraryEmptyView: View {
    var body: some View {
            ZStack {
                VStack(alignment: .center){
                    Text("Ищете свою музыку?")
                        .font(.title)
                        .bold()
                    VStack {
                        Text("Здесь появится купленная Вами в iTunes Store музыка.")
                            .font(.title2)
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.center)
                    }
                    .font(.subheadline)
            }
        }
    }
}

struct LibraryEmptyView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryEmptyView()
    }
}
