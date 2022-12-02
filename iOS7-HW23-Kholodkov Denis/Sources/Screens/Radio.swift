//
//  Radio.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 02.12.2022.
//

import SwiftUI

struct Radio: View {

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    Divider()
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: Metric.rowsH) {
                            ForEach(0..<Metric.pictureNames.count, id: \.self) { index in
                                Text(Metric.descriptionFirst[index])
                                    .padding(.top)
                                    .padding(.bottom)
                                    .multilineTextAlignment(.leading)
                                    .bold()
                                    .font(.caption)
                                    .frame(maxWidth: 280, alignment: .leading)
                                Text(Metric.descriotionSecond[index])
                                    .padding(.top)
                                    .multilineTextAlignment(.leading)
                                    .font(.title2)
                                    .lineLimit(3, reservesSpace: true)
                                    .frame(maxWidth: 280, alignment: .leading)
                                Image(Metric.pictureNames[index]).scaledToFit()
                                    .frame(width: 290)
                                    .padding(.leading)
                            }
                        }
                    }
                    .padding(.bottom)
                    VStack {
                        Divider()
                    }
                    LazyVGrid(columns: Metric.rowsV, alignment: .leading) {
                        ForEach(0..<Metric.pictureNames.count, id: \.self) { index in
                            RadioStation(namePic: Metric.oneStation[index],
                                         textTitle: Metric.descriptionFirst[index],
                                         descriptionText: Metric.descriotionSecond[index])
                        }
                    }
                }
                Color.white
                    .navigationTitle(Metric.textRadio)
            }
        }
    }
}

struct Radio_Previews: PreviewProvider {
    static var previews: some View {
        Radio()
    }
}

extension Radio {
    struct Metric {
        static let rowsH = [
            GridItem(.fixed(15)),
            GridItem(.fixed(50)),
            GridItem(.fixed(170))
        ]

        static let rowsV = [
            GridItem(.fixed(300)),
        ]

        static let textRadio = "Радио"

        static let pictureNames = ["rcmDeep",
                                   "svoeFMTwo",
                                   "rcmDeep",
                                   "rcmDeep",
                                   "svoeFMTwo"]
        static let descriptionFirst = ["Эксклюзив",
                                       "Эксклюзив",
                                       "Эксклюзив",
                                       "Эксклюзив",
                                       "Эксклюзив"]
        static let descriotionSecond = ["Коллекция радиошоу Beats 1",
                                        "Коллекция радиошоу Beats 1",
                                        "Коллекция радиошоу Beats 1",
                                        "Коллекция радиошоу Beats 1",
                                        "Коллекция радиошоу Beats 1"]
        static let oneStation = ["svoeFM",
                                 "deepVocalHouseRadio",
                                 "svoeFM",
                                 "deepVocalHouseRadio",
                                 "svoeFM"]
    }
}
