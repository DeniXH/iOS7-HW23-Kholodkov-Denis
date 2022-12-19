//
//  Section.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 19.12.2022.
//

import UIKit

struct Section: Hashable {
    var id = UUID()
    var title: String
    var items: [ArtistModelKind]
    
}

extension Section {
    static var allSections: [Section] = [
        Section(title: "Tracks", items: [ ArtistModelKind(title: "Stronger",
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
                                                          imageRect: "musicDefault")]),
        
        Section(title: "Stantions", items: [ ArtistModelKind(title: "Rcm Deep",
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
                                                             imageRect: "svoefmWide")
        ])]
}
