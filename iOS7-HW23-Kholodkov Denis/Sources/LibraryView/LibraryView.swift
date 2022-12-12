//
//  LibraryView.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 01.12.2022.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationView {
            VStack() {
                Spacer()
                Text(Metric.findMusic)
                    .bold()
                    .font(.title2)
                    .padding(Metric.textFindMusic)
                Text(Metric.musicFromItunes)
                    .multilineTextAlignment(.center)
                    .font(.title3)
                    .foregroundColor(.gray)
                    .padding(.leading, Metric.textMusicFromItunes)
                    .padding(.trailing, Metric.textMusicFromItunes)
                Spacer()
                SongView()
            }
            .navigationTitle(Metric.mediaStore)
            .navigationBarItems(trailing: NavigationLink(destination: ListMedia(),
                label: {
                Text(Metric.changeStore)
                    .foregroundColor(.red)
            }))
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}

extension LibraryView {
    enum Metric {
        static let findMusic = "Ищете свою музыку?"
        static let musicFromItunes = "Здесь появится купленная Вами в iTunes Store музыка."
        static let mediaStore = "Медиатека"
        static let changeStore = "Изменить"
        static let textFindMusic: CGFloat = 0.5
        static let textMusicFromItunes: CGFloat = 15
    }
}
