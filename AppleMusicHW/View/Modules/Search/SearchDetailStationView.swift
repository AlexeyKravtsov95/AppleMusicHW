//
//  SearchDetailStationView.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 06.12.2021.
//

import SwiftUI

struct SearchDetailStationView: View {
    private let listData = StationModels.data
    private let rows = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows, spacing: 10) {
                ForEach(listData, id: \.self) { data in
                    HStack() {
                        Image(data.image)
                            .resizable()
                            .cornerRadius(6)
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                        }
                }
            }
        }.padding(.leading)
    }
}

struct SearchDetailStationView_Previews: PreviewProvider {
    static var previews: some View {
        SearchDetailStationView()
    }
}
