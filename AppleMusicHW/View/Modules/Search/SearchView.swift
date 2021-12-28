//
//  SearchView.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 28.12.2021.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText: String = "Ваша медиатека"
    @ObservedObject private var categoryData = CategoryModelsData()
    @ObservedObject var searchList = SearchBar()
    @State private var selectedSearch = 1
    
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(showsIndicators: false) {
                    LazyVGrid(columns: columns, alignment: .leading) {
                        Section(header:
                            Text("Поиск по категориям")
                                .fontWeight(.bold)
                                .font(.title3)
                                .padding(.top, 10)
                            ) {
                            ForEach(categoryData.data, id: \.self) {
                                data in
                                NavigationLink(destination: SearchDetailView()) {
                                ZStack(alignment: .leading) {
                                    Image(data.image)
                                        .resizable()
                                        .frame(width: 170, height: 135)
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
                }
                .padding(.leading, 12)
                .padding(.trailing, 12)
            }
            .navigationTitle("Поиск")
            .searchable(text: $searchList.searchText,
                        placement:.navigationBarDrawer(displayMode:.always),
                        prompt: self.$searchText.wrappedValue) {
            VStack(alignment: .leading, spacing: 15) {
                Picker("SearchSource", selection: $selectedSearch) {
                                        Text("Apple Music").tag(0)
                                        Text("Ваша медиатека").tag(1)
                    }
                .onChange(of: selectedSearch) { tag in
                    if tag == 0 {
                        searchList.fetchDataApple()
                        searchText = "Артисты, песни, тексты и др."
                    } else {
                        searchList.fetchDataOwn()
                        searchText = "Ваша медиатека"
                        }
                    }
                .pickerStyle(.segmented)
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible())], alignment: .leading) {
                        ForEach(searchList.filteredTrack, id: \.self) { track in
                            SearchViewCell(track: track, imageWidth: 42)
                                .searchCompletion(track.title)
                                .tint(.primary)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
