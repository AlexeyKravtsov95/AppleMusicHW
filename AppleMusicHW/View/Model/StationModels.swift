//
//  StationModels.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 20.10.2021.
//

import Foundation

class StationModelsData: ObservableObject {
    @Published var data = StationModels.data
}

struct StationModels {
    var image: String
    var title: String
    var subtitle: String
}

extension StationModels: Hashable {
    static var data = [
        StationModels(image: "country pepe",
                      title: "Кантри-хиты",
                      subtitle: "Актуальное звучание"),
        StationModels(image: "pepe hits",
                      title: "Хиты",
                      subtitle: "То, что слушают прямо сейчас"),
        StationModels(image: "chill pepe",
                      title: "Чилаут",
                      subtitle: "Электронная медитация"),
        StationModels(image: "pepe rap",
                      title: "Классика хип-хопа",
                      subtitle: "Кто сделал рэп таким")
    ]
}
