//
//  RadioView.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 20.10.2021.
//

import SwiftUI

struct RadioView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack (alignment: .leading) {
                    Divider()
                    RadioListView()
                        .offset(y: -15)
                }
            }
            .navigationTitle("Радио")
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
