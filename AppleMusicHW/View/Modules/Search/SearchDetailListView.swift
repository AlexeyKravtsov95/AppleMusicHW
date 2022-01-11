//
//  SearchDetailListView.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 28.12.2021.
//

import SwiftUI

struct SearchDetailListView: View {
    @ObservedObject private var listData = RadioModelsData()
    private let rows = [
        GridItem(.fixed(Size.searchDetailListViewGridSize))
    ]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(listData.data, id: \.self) { data in
                    VStack(alignment: .leading) {
                        Text(data.title)
                            .foregroundColor(.secondary)
                            .font(.system(size: FontSize.fontSize20))
                        Text(data.subtitle)
                            .font(.system(size: FontSize.fontSize22))
                        Text(data.musicType)
                            .foregroundColor(.secondary)
                            .font(.system(size: FontSize.fontSize22))
                        Image(data.image)
                            .resizable()
                            .frame(width:Size.searchDetailListViewImageFrameWidth)
                            .cornerRadius(Size.radius6)
                    }
                }
            }.padding()
        }
    }
}

struct SearchDetailListView_Previews: PreviewProvider {
    static var previews: some View {
        SearchDetailListView()
    }
}
