//
//  LibraryModels.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 10.10.2021.
//

import Foundation

struct LibraryModels {
    var icon: String
    var name: String
}

extension LibraryModels: Hashable {
    static var data = [
        LibraryModels(icon: "music.note.list", name: "Плейлисты"),
        LibraryModels(icon: "music.mic", name: "Артисты"),
        LibraryModels(icon: "square.stack", name: "Альбомы"),
        LibraryModels(icon: "music.note", name: "Песни"),
        LibraryModels(icon: "tv", name: "Телешоу и фильмы"),
        LibraryModels(icon: "tv.music.note", name: "Видеоклипы"),
        LibraryModels(icon: "guitars", name: "Жанры"),
        LibraryModels(icon: "person.2.square.stack", name: "Сборники"),
        LibraryModels(icon: "music.quarternote.3", name: "Авторы"),
        LibraryModels(icon: "arrow.down.circle", name: "Загружено"),
        LibraryModels(icon: "music.note.house", name: "Домашняя коллекция")
    ]
}
