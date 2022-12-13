//
//  Model.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 01.12.2022.
//

import SwiftUI

struct SingType: Hashable, Identifiable {
    var id = UUID()
    let name: String
    let icon: String

    static var singType: [SingType] = [SingType(name: "Плейлисты",
                                       icon: "music.note.list"),
                                     SingType(name: "Артисты",
                                       icon: "music.mic"),
                                     SingType(name: "Альбомы",
                                       icon: "square.stack"),
                                     SingType(name: "Песни",
                                       icon: "music.note"),
                                     SingType(name: "Телешоу и фильмы",
                                       icon: "tv"),
                                     SingType(name: "Видеоклипы",
                                       icon: "music.note.tv"),
                                     SingType(name: "Жанры",
                                       icon: "guitars"),
                                     SingType(name: "Сборники",
                                       icon: "person.2.crop.square.stack"),
                                     SingType(name: "Авторы",
                                       icon: "music.quarternote.3"),
                                     SingType(name: "Загружено",
                                       icon: "arrow.down.circle"),
                                     SingType(name: "Домашняя коллекция",
                                       icon: "music.note.house")]
}
