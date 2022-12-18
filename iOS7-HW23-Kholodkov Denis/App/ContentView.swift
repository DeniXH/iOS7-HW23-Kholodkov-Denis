//
//  ContentView.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 01.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var expand = false
    @State var isPlaying = false
    @Namespace var animation
    
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
        .safeAreaInset(edge: .bottom) {
            SongView(animation: animation,
                     isPlaying: $isPlaying,
                     expand: $expand)
            .offset(y: expand ? Metric.firstValueOffset : Metric.secondValueOffset)
            .accentColor(.blue)
        }
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
    
    static let firstValueOffset: CGFloat = 0
    static let secondValueOffset: CGFloat = -39
}
