//
//  SearchModelData.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 11.01.2022.
//

import Foundation

class SearchModelsData: ObservableObject {
    @Published var appleMusic = SearchModel.appleMusic
    @Published var radionStationList = SearchModel.radioStationList
}
