//
//  Model.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 01.12.2022.
//

import SwiftUI

struct Model: Hashable, Identifiable {
    var id = UUID()
    let name: String
    let icon: String

    static var model: [Model] = [Model(name: "Плейлисты",
                                       icon: "music.note.list"),
                                 Model(name: "Артисты",
                                       icon: "music.mic"),
                                 Model(name: "Альбомы",
                                       icon: "square.stack"),
                                 Model(name: "Песни",
                                       icon: "music.note"),
                                 Model(name: "Телешоу и фильмы",
                                       icon: "tv"),
                                 Model(name: "Видеоклипы",
                                       icon: "music.note.tv"),
                                 Model(name: "Жанры",
                                       icon: "guitars"),
                                 Model(name: "Сборники",
                                       icon: "person.2.crop.square.stack"),
                                 Model(name: "Авторы",
                                       icon: "music.quarternote.3"),
                                 Model(name: "Загружено",
                                       icon: "arrow.down.circle"),
                                 Model(name: "Домашняя коллекция",
                                       icon: "music.note.house")]
}
