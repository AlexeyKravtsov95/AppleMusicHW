//
//  SearchBar.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 28.12.2021.
//

import SwiftUI
import Combine

class SearchHelper: ObservableObject {
    private var track = [SearchModel]()
    var filteredTrack = [SearchModel]()
    
    @ObservedObject var musicTrack = SearchModelsData()
    @ObservedObject var stationTrack = SearchModelsData()
    
    var publisher: AnyCancellable?
    
    @Published var searchText = ""
    
    init() {
        fetchDataOwn()
        
        publisher = $searchText
            .receive(on: RunLoop.main)
            .sink(receiveValue: { str in
                if !self.searchText.isEmpty {
                    self.filteredTrack = self.track.filter {
                        $0.title.localizedCaseInsensitiveContains(str)
                    }
                } else {
                    self.filteredTrack = self.track
                }
            })
    }
    
    func fetchDataApple() {
        track = musicTrack.appleMusic
        filteredTrack = track
    }

    func fetchDataOwn() {
        track = stationTrack.radionStationList
        filteredTrack = track
    }
}

