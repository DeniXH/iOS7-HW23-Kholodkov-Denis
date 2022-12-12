//
//  Model.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 01.12.2022.
//

import SwiftUI

struct ModelSing: Hashable, Identifiable {
    var id = UUID()
    let name: String
    let icon: String

    static var model: [ModelSing] = [ModelSing(name: "Плейлисты",
                                       icon: "music.note.list"),
                                     ModelSing(name: "Артисты",
                                       icon: "music.mic"),
                                     ModelSing(name: "Альбомы",
                                       icon: "square.stack"),
                                     ModelSing(name: "Песни",
                                       icon: "music.note"),
                                     ModelSing(name: "Телешоу и фильмы",
                                       icon: "tv"),
                                     ModelSing(name: "Видеоклипы",
                                       icon: "music.note.tv"),
                                     ModelSing(name: "Жанры",
                                       icon: "guitars"),
                                     ModelSing(name: "Сборники",
                                       icon: "person.2.crop.square.stack"),
                                     ModelSing(name: "Авторы",
                                       icon: "music.quarternote.3"),
                                     ModelSing(name: "Загружено",
                                       icon: "arrow.down.circle"),
                                     ModelSing(name: "Домашняя коллекция",
                                       icon: "music.note.house")]
}
