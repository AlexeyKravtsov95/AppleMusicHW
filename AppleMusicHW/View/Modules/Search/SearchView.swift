//
//  SearchView.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 01.12.2021.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    private let categoryData = CategoryModels.data

    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                HStack (spacing: 5){
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 26))
                        .foregroundColor(Color(.lightGray))
                        .padding(.leading, 15)
                    TextField("Ваша Медиатека", text: $searchText)
                }
                .frame(height: 45)
                .background(Color.init(.systemGray6))
                .cornerRadius(15)
                .padding(.init(top: 5, leading: 12, bottom: 5, trailing: 12))
                ScrollView(showsIndicators: false) {
                    LazyVGrid(columns: columns, alignment: .leading) {
                        Section(header: Text("Поиск по категориям")
                                    .fontWeight(.bold)
                                    .font(.title3)
                                    .padding(.top, 10)
                        ) {
                            ForEach(categoryData, id: \.self) {
                                data in
                                ZStack(alignment: .leading) {
                                    Image(data.image)
                                        .resizable()
                                        .frame(width: 190, height: 140)
                                        .cornerRadius(7)
                                    Text(data.name)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .padding(.init(top: 100, leading: 12, bottom: 0, trailing: 12))
                                }
                            }
                        }
                    }
                }
                .padding(.leading, 12)
                .padding(.trailing, 12)
            }
            .navigationTitle("Поиск")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
