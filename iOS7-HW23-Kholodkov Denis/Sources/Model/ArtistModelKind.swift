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
    @Published var track: String = ""
    @Published var album: String = ""
    @Published var coverImage: String = ""
}

struct ArtistModelKind: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var artist: String
    var imageSqr: String
    var imageRect: String?

    static var covers: [ArtistModelKind] = [ ArtistModelKind(title: "",
                                                             artist: "",
                                                             imageSqr: ""),
                                             ArtistModelKind(title: "",
                                                             artist: "",
                                                             imageSqr: ""),
                                             ArtistModelKind(title: "",
                                                             artist: "",
                                                             imageSqr: ""),
                                             ArtistModelKind(title: "",
                                                             artist: "",
                                                             imageSqr: ""),
                                             ArtistModelKind(title: "",
                                                             artist: "",
                                                             imageSqr: ""),
                                             ArtistModelKind(title: "",
                                                             artist: "",
                                                             imageSqr: ""),
                                             ArtistModelKind(title: "",
                                                             artist: "",
                                                             imageSqr: ""),
                                             ArtistModelKind(title: "",
                                                             artist: "",
                                                             imageSqr: ""),

                                             ArtistModelKind(title: "",
                                                             artist: "",
                                                             imageSqr: "",
                                                             imageRect: "Hits"),
                                             ArtistModelKind(title: "",
                                                             artist: "",
                                                             imageSqr: "",
                                                             imageRect: "Hits"),
                                             ArtistModelKind(title: "",
                                                             artist: "",
                                                             imageSqr: "",
                                                             imageRect: "Hits"),
                                             ArtistModelKind(title: "",
                                                             artist: "",
                                                             imageSqr: "",
                                                             imageRect: "Hits"),
                                             ArtistModelKind(title: "",
                                                             artist: "",
                                                             imageSqr: "",
                                                             imageRect: "Hits"),
                                             ArtistModelKind(title: "",
                                                             artist: "",
                                                             imageSqr: "",
                                                             imageRect: "Hits")]
}



