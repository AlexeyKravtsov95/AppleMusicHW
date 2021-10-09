//
//  LibraryListView.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 10.10.2021.
//

import SwiftUI

struct LibraryListView: View {
    private var categoriesItem = LibraryModels.data
    
    @State private var multiSelection = Set<String>()
    
    var body: some View {
        List(selection: $multiSelection) {
            ForEach(categoriesItem, id: \.self) { item in
                HStack {
                    Image(systemName: item.icon)
                        .foregroundColor(.red)
                    Text(item.name)
                }
            }
            .onMove(perform: { indices, newOffset in
            })
        }
        .listStyle(InsetListStyle())
    }
}

struct LibraryListView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryListView()
    }
}
