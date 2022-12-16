//
//  ArtistModelKind.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 13.12.2022.
//

import Foundation

class Music: ObservableObject {
    @Published var albums: [ArtistModelKind] = ArtistModelKind.covers
}

class CurrentMusic: ObservableObject {
    @Published var track: String = "Stronger"
    @Published var album: String = "Kelly Clarkson"
    @Published var coverImage: String = "KellyClarkson"
}

struct ArtistModelKind: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var artist: String
    var imageSqr: String
    var imageRect: String?

    static var covers: [ArtistModelKind] = [ ArtistModelKind(title: "Stronger",
                                                             artist: "Kelly Clarkson",
                                                             imageSqr: "KellyClarkson",
                                                             imageRect: "musicDefault"),
                                             ArtistModelKind(title: "Souls Together",
                                                             artist: "Dinnerdate & Fabich",
                                                             imageSqr: "df",
                                                             imageRect: "musicDefault"),
                                             ArtistModelKind(title: "Careless Whisper",
                                                             artist: "George Michael",
                                                             imageSqr: "GeorgeMichael",
                                                             imageRect: "musicDefault"),
                                             ArtistModelKind(title: "Lounge City .RA",
                                                             artist: "Sako Isoyan",
                                                             imageSqr: "SakoIsoyan",
                                                             imageRect: "musicDefault"),
                                             ArtistModelKind(title: "Hello",
                                                             artist: "Adele",
                                                             imageSqr: "Adele",
                                                             imageRect: "musicDefault"),
                                             ArtistModelKind(title: "Scary People",
                                                             artist: "Georgi Kay",
                                                             imageSqr: "GeorgiKay",
                                                             imageRect: "musicDefault"),
                                             ArtistModelKind(title: "Ревность",
                                                             artist: "Каста",
                                                             imageSqr: "Kasta",
                                                             imageRect: "musicDefault"),
                                             ArtistModelKind(title: "Crucify",
                                                             artist: "Bentley Grey",
                                                             imageSqr: "bentleyGrey",
                                                             imageRect: "musicDefault"),

                                             ArtistModelKind(title: "Rcm Deep",
                                                             artist: "radio",
                                                             imageSqr: "rcmDeep",
                                                             imageRect: "rcmDeepWide"),
                                             ArtistModelKind(title: "Svoe FM",
                                                             artist: "radio",
                                                             imageSqr: "svoeFMTwo",
                                                             imageRect: "svoefmWideSecond"),
                                             ArtistModelKind(title: "Rcm Deep",
                                                             artist: "radio",
                                                             imageSqr: "rcmDeep",
                                                             imageRect: "rcmDeepWide"),
                                             ArtistModelKind(title: "Rcm Deep",
                                                             artist: "radio",
                                                             imageSqr: "rcmDeep",
                                                             imageRect: "rcmDeepWide"),
                                             ArtistModelKind(title: "Svoe FM",
                                                             artist: "radio",
                                                             imageSqr: "svoeFMTwo",
                                                             imageRect: "svoefmWideSecond"),
                                             ArtistModelKind(title: "Svoe FM",
                                                             artist: "radio",
                                                             imageSqr: "svoeFM",
                                                             imageRect: "svoefmWide")]
}



