//
//  CategoryModels.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 05.12.2021.
//

import Foundation

struct CategoryModels {
    var image: String
    var name: String
}

extension CategoryModels: Hashable {
    static var data = [
        CategoryModels(image: "wintertime",
                       name: "Зимнее время"),
        CategoryModels(image: "popinrussian",
                       name: "Поп на русском"),
        CategoryModels(image: "popmusic",
                       name: "Поп"),
        CategoryModels(image: "alternativemusic",
                       name: "Альтернатива"),
        CategoryModels(image: "rapmusic",
                       name: "Рэп"),
        CategoryModels(image: "rockmusic",
                       name: "Рок"),
        CategoryModels(image: "hiphopmusic",
                       name: "Хип-хоп"),
        CategoryModels(image: "forchildrenmusic",
                       name: "Для детей")
    ]
}
