//
//  SearchDetailStationView.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 28.12.2021.
//

import SwiftUI

struct SearchDetailStationView: View {
    @ObservedObject private var listData = StationModelsData()
    private let rows = [GridItem(.flexible())]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows, spacing: Size.searchDetailStationViewGridSpacing) {
                ForEach(listData.data, id: \.self) { data in
                    HStack() {
                        Image(data.image)
                            .resizable()
                            .cornerRadius(Size.radius6)
                            .scaledToFit()
                            .frame(width: Size.searchDetailStationViewImageFrameWidth, height: Size.searchDetailStationViewImageFrameHeight)
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
