//
//  SearchDetailView.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 15.12.2022.
//

import SwiftUI

struct SearchDetailView: View {

    @StateObject var radio = Music()

    var selectedRadio: ArtistModelKind

    let rows = [GridItem(.flexible())]
    let columns = Array(repeating: GridItem(.flexible(), spacing: 15), count: 2)

    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        RadioStationRectangleView(cover: selectedRadio)

                        ForEach(radio.albums) { cover in
                            if cover != selectedRadio {
                                RadioStationRectangleView(cover: cover)
                            }
                        }
                    }
                }

                Divider()
                    .padding(.leading, 5)

                HStack {
                    Text("Autumn mood")
                        .font(.title)
                    Spacer()
                    Text("All")
                        .foregroundColor(.red)
                }
                .padding([.top, .leading, .trailing], 15)

                LazyVGrid(columns: columns) {
                    ForEach(radio.albums) { cover in
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
                .padding([.leading, .trailing])
            }
            .padding(.bottom, 90)
        }
        .toolbar {
            Button {
                print("More...")
            } label: {
                Image(systemName: "ellipsis")
            }
        }
    }
}

struct SearchDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SearchDetailView(selectedRadio: ArtistModelKind.covers[0])
    }
}
