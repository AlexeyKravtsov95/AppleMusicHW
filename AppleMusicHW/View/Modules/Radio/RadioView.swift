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
                        .padding(.top, 5)
                    RadioListView()
                        .frame(height: 340)
                    Divider()
                        .padding(.top, 20)
                    Text("Станции")
                        .bold()
                        .font(.title2)
                        .padding(.leading)
                    StationListView()
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
