//
//  RadioStationView.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 20.10.2021.
//

import SwiftUI

struct RadioListView: View {
    private let listData = RadioModels.data
    private let rows = [
        GridItem(.fixed(350))
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows, alignment: .top) {
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

struct RadioListView_Previews: PreviewProvider {
    static var previews: some View {
        RadioListView()
    }
}
