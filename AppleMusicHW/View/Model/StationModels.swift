//
//  StationModels.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 20.10.2021.
//

import Foundation

struct StationModels {
    var image: String
    var title: String
    var subtitle: String
}

extension StationModels: Hashable {
    static var data = [
        StationModels(image: "station country",
                      title: "Кантри-хиты",
                      subtitle: "Актуальное звучание"),
        StationModels(image: "station hits",
                      title: "Хиты",
                      subtitle: "То, что слушают прямо сейчас"),
        StationModels(image: "station chill",
                      title: "Чилаут",
                      subtitle: "Электронная медитация"),
        StationModels(image: "station classic hip-hop",
                      title: "Классика хип-хопа",
                      subtitle: "Кто сделал рэп таким")
    ]
}
