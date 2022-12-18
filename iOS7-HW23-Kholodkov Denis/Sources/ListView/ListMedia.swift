//
//  ListMedia.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 01.12.2022.
//

import SwiftUI

struct ListMedia: View {

    var mediaSet: [SingType] = SingType.singType
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            NavigationView {
                List {
                    ForEach(mediaSet, id: \.name)  { model in
                        ListRow(items: model)
                            .listRowSeparator(.visible)
                    } .onMove(perform: moveRows)
                }
                .environment(\.editMode, .constant(.active))
                .listStyle(.plain)
                .navigationTitle(Metric.navigationTitle)
                .navigationBarItems(trailing: Button(action: {
                    dismiss()
                }) {
                    Text(Metric.buttonFinishChange)
                        .foregroundColor(.red)
                })
            } .navigationBarBackButtonHidden(true)
           // SongView()
        }
    }
    func  moveRows(source: IndexSet, target: Int) {
        SingType.singType.move(fromOffsets: source, toOffset: target)
    }

}

struct ListMedia_Previews: PreviewProvider {
    static var previews: some View {
        ListMedia()
    }
}

extension ListMedia {
    enum Metric {
        static let navigationTitle = "Медиатека"
        static let buttonFinishChange = "Готово"
    }
}
