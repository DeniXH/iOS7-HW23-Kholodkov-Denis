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
                .padding(.bottom, -Metric.padding)
            Text("Apple Music station")
                .foregroundColor(.secondary)
            ZStack(alignment: .bottomLeading) {
                if let image = cover.imageRect {
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: Metric.imageWidth, alignment: .center)
                        .frame(maxWidth: .infinity)
                        .cornerRadius(Metric.imageCornerRadius)
                        .padding([.leading, .trailing], Metric.imagePadding)

                }
                Text("Apple Music station")
                    .foregroundColor(.white)
                    .padding([.leading, .bottom], Metric.padding)
            }
        }
        .padding(.leading, Metric.padding)
    }
}

struct RadioStationRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RadioStationRectangleView(cover: ArtistModelKind.covers[0]).previewLayout(.sizeThatFits)
    }
}

extension RadioStationRectangleView {
    enum Metric {
        static let padding: CGFloat = 5
        static let imageWidth: CGFloat = 360
        static let imageCornerRadius: CGFloat = 10
        static let imagePadding: CGFloat = 1.5
    }
}
