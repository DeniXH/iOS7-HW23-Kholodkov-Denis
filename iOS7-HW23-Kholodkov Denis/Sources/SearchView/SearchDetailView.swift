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
    let columns = Array(repeating: GridItem(.flexible(), spacing: Metric.columnSpacing), count: Metric.columnCount)
    
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
                    Text(Metric.winterMood)
                        .font(.title)
                    Spacer()
                    Text(Metric.all)
                        .foregroundColor(.red)
                }
                .padding([.top, .leading, .trailing], Metric.padding)
                
                LazyVGrid(columns: columns) {
                    ForEach(radio.albums) { cover in
                        ZStack(alignment: .bottomLeading) {
                            Image(cover.imageSqr)
                                .resizable()
                                .imageCoverStyle()
                            
                            Spacer()
                            Text(cover.title)
                                .foregroundColor(.white)
                                .padding([.bottom, .leading], Metric.padding)
                        }
                    }
                }
                .padding([.leading, .trailing])
            }
            .padding(.bottom, Metric.bottomPadding)
        }
        .toolbar {
            Button {
                print(Metric.bottomPadding)
            } label: {
                Image(systemName: Metric.buttonImageName)
            }
        }
    }
}

struct SearchDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SearchDetailView(selectedRadio: ArtistModelKind.covers[0])
    }
}

extension SearchDetailView {
    enum Metric {
        static let columnSpacing: CGFloat = 15
        static let columnCount = 2
        static let padding: CGFloat = 15
        static let bottomPadding: CGFloat = 90
        
        static let winterMood = "Winter mood"
        static let all = "All"
        static let buttonPrint = "More..."
        static let buttonImageName = "ellipsis"
    }
}
