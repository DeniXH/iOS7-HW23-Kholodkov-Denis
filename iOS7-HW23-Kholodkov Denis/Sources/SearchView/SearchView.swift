//
//  SearchView.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 13.12.2022.
//

import SwiftUI

struct SearchView: View {

    @State private var searchText = ""
    @StateObject var music = Music()
    @EnvironmentObject var currentMusic: CurrentMusic

    let columns = Array(repeating: GridItem(.flexible(), spacing: Metric.columnSpacing), count: Metric.columntCount)

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: Metric.vstackSpasing) {
                Text(Metric.radioStation)
                    .font(.title2)
                    .padding(.bottom)

                LazyVGrid(columns: columns, spacing: Metric.lazyVGridSpasing) {
                    ForEach(music.albums.filter({ $0.artist == Metric.radio &&
                        ($0.title.lowercased().contains(searchText.lowercased())
                         || searchText.isEmpty) }), id: \.self) { cover in
                            NavigationLink {
                                SearchDetailView(selectedRadio: cover)
                                    .navigationTitle(cover.title)
                            } label: {
                                ZStack(alignment: .bottomLeading) {
                                    Image(cover.imageSqr)
                                        .resizable()
                                        .imageCoverStyle()

                                    Spacer()
                                    Text(cover.title)
                                        .foregroundColor(.white)
                                        .padding([.bottom, .leading], Metric.textPadding)
                                }
                            }
                        }
                }
                .padding(.top)

                Text(Metric.tracks)
                    .font(.title2)
                    .padding(.bottom)

                LazyVGrid(columns: columns, spacing: Metric.lazyVGridSpasing) {
                    ForEach(music.albums.filter({ $0.artist != Metric.radio &&
                        ($0.title.lowercased().contains(searchText.lowercased())
                         || searchText.isEmpty) }), id: \.self) { cover in
                            Button {
                                currentMusic.track = cover.title
                                currentMusic.coverImage = cover.imageSqr
                                currentMusic.album = cover.artist

                            } label: {
                                ZStack(alignment: .bottomLeading) {
                                    Image(cover.imageSqr)
                                        .resizable()
                                        .imageCoverStyle()

                                    Spacer()
                                    Text(cover.title)
                                        .foregroundColor(.white)
                                        .padding([.bottom, .leading], Metric.textPadding)
                                }
                            }
                        }
                }
                .padding(.top)
            }
            .searchable(text: $searchText, prompt: Metric.searchMusic)
            .padding()
            .padding(.bottom, Metric.searchPadding)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

extension SearchView {
    enum Metric {
        static let columnSpacing: CGFloat = 15
        static let columntCount = 2

        static let vstackSpasing: CGFloat = 18
        static let lazyVGridSpasing: CGFloat = 15
        static let textPadding: CGFloat = 15
        static let searchPadding: CGFloat = 90

        static let radioStation = "Radio Station:"
        static let radio = "radio"
        static let tracks = "Tracks:"
        static let searchMusic = "Search music"
    }
}
