//
//  StationListView.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 20.10.2021.
//

import SwiftUI

struct StationListView: View {
    private let listData = StationModels.data
    private let columns = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: columns, alignment: .leading) {
                ForEach(listData, id: \.self) { data in
                    HStack() {
                        Image(data.image)
                            .resizable()
                            .cornerRadius(6)
                            .scaledToFit()
                            .frame(width: 110)
                        VStack(alignment:.leading) {
                            Text(data.title)
                                .font(.title3)
                            Text(data.subtitle)
                                .font(.system(size: 14))
                                .foregroundColor(.secondary)
                        }

                    }
                    Divider()
                }
            }.padding(.leading)
        }
    }
}

struct StationListView_Previews: PreviewProvider {
    static var previews: some View {
        StationListView()
    }
}
