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
    @ObservedObject var searchList = SearchHelper()
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
                                    .padding(.top, Padding.searchViewPaddingTopTextSearch)
                            ) {
                            ForEach(categoryData.data, id: \.self) {
                                data in
                                NavigationLink(destination: SearchDetailView()) {
                                ZStack(alignment: .leading) {
                                    Image(data.image)
                                        .resizable()
                                        .frame(width: Size.searchViewFrameSizeWidth, height: Size.searchViewFrameSizeHeight)
                                        .cornerRadius(Size.radius6)
                                    Text(data.name)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .padding(.init(top: Padding.searchViewPaddingTopDataText, leading: Padding.searchViewPaddingLeading, bottom: Padding.searchViewPaddingBottomDataText, trailing: Padding.searchViewPaddingTrailing))
                                    }
                                }
                            }
                        }
                    }
                }
                .padding(.leading, Padding.searchViewPaddingLeading)
                .padding(.trailing, Padding.searchViewPaddingTrailing)
            }
            .navigationTitle("Поиск")
            .searchable(text: $searchList.searchText,
                        placement:.navigationBarDrawer(displayMode:.always),
                        prompt: self.$searchText.wrappedValue) {
                VStack(alignment: .leading, spacing: StackSpacing.Vspacing15) {
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
