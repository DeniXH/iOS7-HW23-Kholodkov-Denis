//
//  RadioStationRectangleView.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 15.12.2022.
//

import SwiftUI

struct RadioStationRectangleView: View {

    let cover: ArtistModelKind

    var body: some View {
        VStack(alignment: .leading) {
            Divider()
            Text("featured station".uppercased())
                .foregroundColor(.secondary)
                .font(.caption2)
            Text(cover.title)
                .font(.title3)
                .padding(.bottom, -5)
            Text("Apple Music station")
                .foregroundColor(.secondary)
            ZStack(alignment: .bottomLeading) {
                if let image = cover.imageRect {
                        Image(image)
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 360, alignment: .center)
                            .frame(maxWidth: .infinity)
                            .cornerRadius(10)
                            .padding([.leading, .trailing], 1.5)

                    }
                Text("Apple Music station")
                    .foregroundColor(.white)
                    .padding([.leading, .bottom], 5)
            }
        }
        .padding(.leading, 5)
    }
}

struct RadioStationRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RadioStationRectangleView(cover: ArtistModelKind.covers[0]).previewLayout(.sizeThatFits)
    }
}
