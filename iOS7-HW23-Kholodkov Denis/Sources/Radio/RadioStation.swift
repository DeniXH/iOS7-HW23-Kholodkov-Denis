//
//  RadioStation.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 02.12.2022.
//

import SwiftUI

struct RadioStation: View {

    var namePic: String
    var textTitle: String
    var descriptionText: String

    var body: some View {
        HStack {
            Image(namePic)
                .resizable()
                .scaledToFit()
                .frame(width: Metric.imageSize,
                       height: Metric.imageSize)
                .cornerRadius(Metric.cornerRadius)

            VStack(alignment: .leading) {
                Text(textTitle)
                    .font(.title2)
                Text(descriptionText)
                    .foregroundColor(.secondary)
                Divider()
                    .offset(y: Metric.offset)
            }
            Spacer()
        }
        .padding(.leading, Metric.leadingValue)
    }
}


struct RadioStation_Previews: PreviewProvider {
    static var previews: some View {
        RadioStation(namePic: "",
                     textTitle: "",
                     descriptionText: "")
    }
}

extension RadioStation {
    enum Metric {
        static let imageSize: CGFloat = 90
        static let cornerRadius: CGFloat = 8
        static let offset: CGFloat = 17
        static let leadingValue: CGFloat = 5
    }
}
