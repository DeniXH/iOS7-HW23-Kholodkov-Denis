//
//  ContentView.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 01.12.2022.
//

import SwiftUI

struct Search: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.white
            }
            .navigationTitle(Metric.textFind)
        }
    }
}

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
            Search()
                .tabItem {
                    Image(systemName: Metric.pictureSearch)
                    Text(Metric.textFind)
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
        
        static let pictureMediastore = "externaldrive.fill"
        static let pictureRadio = "radio"
        static let pictureSearch = "magnifyingglass"
    }
