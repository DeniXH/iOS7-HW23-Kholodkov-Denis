//
//  ContentView.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 01.12.2022.
//

import SwiftUI

//struct Radio: View {
//    var body: some View {
//        NavigationView {
//            ZStack {
//                Color.white
//            }
//            .navigationTitle(Metric.textRadio)
//        }
//    }
//}

//struct Search: View {
//    var body: some View {
//        NavigationView {
//            ZStack {
//                Color.white
//            }
//            .navigationTitle(Metric.textFind)
//        }
//    }
//}

struct ContentView: View {
    var body: some View {
        TabView {
            LibraryView()
                .tabItem {
                    Image(systemName: Metric.pictureMediastore)
                    Text(Metric.textMediaStore)
                }

            Radio()
                .tabItem {
                    Image(systemName: Metric.pictureRadio)
                    Text(Metric.textRadio)
                }
            NavigationView {
                SearchView()
                    .navigationTitle(Metric.textFind)
            }
                .tabItem {
                    Text(Metric.textFind)
                    Image(systemName: Metric.pictureSearch)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
        }
        .accentColor(.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

enum Metric {
    static let textRadio = "Радио"
    static let textFind = "Поиск"
    static let textMediaStore = "Медиатека"

    static let pictureMediastore = "square.stack.fill"
    static let pictureRadio = "dot.radiowaves.left.and.right"
    static let pictureSearch = "magnifyingglass"

}
