//
//  SearchDetailListView.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 06.12.2021.
//

import SwiftUI

struct SearchDetailListView: View {
    private let listData = RadioModels.data
    private let rows = [
        GridItem(.fixed(320))
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(listData, id: \.self) { data in
                    VStack(alignment: .leading) {
                        Text(data.title)
                            .foregroundColor(.secondary)
                            .font(.system(size: 20))
                        Text(data.subtitle)
                            .font(.system(size: 22))
                        Text(data.musicType)
                            .foregroundColor(.secondary)
                            .font(.system(size: 22))
                        Image(data.image)
                            .resizable()
                            .frame(width:380)
                            .cornerRadius(6)
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
