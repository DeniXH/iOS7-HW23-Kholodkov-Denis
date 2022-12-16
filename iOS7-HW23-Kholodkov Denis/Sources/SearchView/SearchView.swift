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

    let columns = Array(repeating: GridItem(.flexible(), spacing: 15), count: 2)

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 18) {
                Text("Radio Station:")
                    .font(.title2)
                    .padding(.bottom, 0)

                LazyVGrid(columns: columns, spacing: 15) {
                    ForEach(music.albums.filter({ $0.artist == "radio" &&
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
                                        .padding([.bottom, .leading], 15)
                            }
                        }
                    }
                }
                .padding(.top, 0)

                Text("Tracks:")
                    .font(.title2)
                    .padding(.bottom, 0)

                LazyVGrid(columns: columns, spacing: 15) {
                    ForEach(music.albums.filter({ $0.artist != "radio" &&
                        ($0.title.lowercased().contains(searchText.lowercased())
                         || searchText.isEmpty) }), id: \.self) { cover in
                            Button {
                                // TODO: - разобраться с плэйером
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
                                        .padding([.bottom, .leading], 15)
                            }
                        }
                    }
                }
                .padding(.top, 0)
            }
            .searchable(text: $searchText, prompt: "Search music")
            .padding()
            .padding(.bottom, 90)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
