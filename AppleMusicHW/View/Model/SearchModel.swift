//
//  SearchModel.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 28.12.2021.
//

import SwiftUI

struct SearchModel: Hashable {
    var title: String
    var subTitle: String?
    var imageName: String
}

extension SearchModel {
    static var appleMusic: [SearchModel] = [
        SearchModel(title: "Nirvana", subTitle: "Smell like teen spirit", imageName: "nirvana"),
        SearchModel(title: "Nirvana", subTitle: "Rape me", imageName: "nirvana"),
        SearchModel(title: "Nirvana", subTitle: "Breed", imageName: "nirvana"),
        SearchModel(title: "Linkin Park", subTitle: "Burn It Down", imageName: "linkin park"),
        SearchModel(title: "Linkin Park", subTitle: "Numb", imageName: "linkin park"),
        SearchModel(title: "Linkin Park", subTitle: "New Divide", imageName: "linkin park")
    ]

    static var radioStationList: [SearchModel] = [
        SearchModel(title: "То, что слушают прямо сейчас.", subTitle: "Хиты", imageName: "hits"),
        SearchModel(title: "Чилаут", subTitle: "Электронная медитация", imageName: "chill pepe")
    ]
}
