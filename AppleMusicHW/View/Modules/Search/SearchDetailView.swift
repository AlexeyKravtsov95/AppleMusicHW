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
                    .frame(height: Size.searchDetailViewFrameSizeHeight)
                Divider()
                    .padding(.top, Padding.searchDetailViewPaddingTopDivider)
                HStack {
                    Text("Настроение - осень")
                        .bold()
                        .font(.title2)
                        .padding(.leading)
                    Text("См. все")
                        .padding(.leading, Padding.searchDetailViewPaddingLeadingText)
                        .foregroundColor(.red)
                }
                    SearchDetailStationView()
                }

            .navigationTitle("Зимнее время")
            .navigationBarItems(
                trailing:
                    Button(action: {}, label: {
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
