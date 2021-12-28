//
//  SearchDetailView.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 28.12.2021.
//

import SwiftUI

struct SearchDetailView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack (alignment: .leading) {
                SearchDetailListView()
                    .frame(height: 340)
                Divider()
                    .padding(.top, 10)
                HStack {
                    Text("Настроение - осень")
                        .bold()
                        .font(.title2)
                        .padding(.leading)
                    Text("См. все")
                        .padding(.leading, 64)
                        .foregroundColor(.red)
                }
                    SearchDetailStationView()
                }

            .navigationTitle("Зимнее время")
            .navigationBarItems(
                trailing:
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "ellipsis")
                            .foregroundColor(.red)
                    })
            )
        }
    }
}

struct SearchDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SearchDetailView()
    }
}
