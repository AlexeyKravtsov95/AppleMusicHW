//
//  RadioModels.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 20.10.2021.
//

import Foundation

struct RadioModels {
    var title: String
    var subtitle: String
    var musicType: String
    var image: String
}

extension RadioModels: Hashable {
    static var data = [
        RadioModels(title: "Избранная радиостанция",
                    subtitle: "Хиты",
                    musicType: "То, что слушают прямо сейчас.",
                    image: "hits"),
        RadioModels(title: "Избранная радиостанция",
                    subtitle: "Хип-хоп",
                    musicType: "Идеальные биты и рифмы.",
                    image: "hip hop"),
        RadioModels(title: "Избранная радиостанция",
                    subtitle: "Поп-музыка",
                    musicType: "Все топ-хиты.",
                    image: "pop music"),
        RadioModels(title: "Избранная радиостанция",
                    subtitle: "Поп-музыка для тренировок",
                    musicType: "Вперед и с музыкой!",
                    image: "pop music for training")
    ]
}
