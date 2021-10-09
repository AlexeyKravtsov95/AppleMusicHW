//
//  LibraryView.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 10.10.2021.
//

import SwiftUI

struct LibraryView: View {
    @State private var showFilter = false

    var body: some View {
        NavigationView {
            ZStack {
                if !showFilter {
                    LibraryEmptyView()
                } else {
                    LibraryListView()
                }
            }
            .environment(\.editMode, .constant(showFilter ? EditMode.active : EditMode.inactive))
            .accentColor(.red)
            .navigationTitle("Медиатека")
            .navigationBarItems(trailing:
                Button(action: { showFilter.toggle() }, label: {
                    if !showFilter {
                        Text("Править")
                            .foregroundColor(.red)
                    } else {
                        Text("Готово")
                            .foregroundColor(.red)
                    }
                })
            )
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
