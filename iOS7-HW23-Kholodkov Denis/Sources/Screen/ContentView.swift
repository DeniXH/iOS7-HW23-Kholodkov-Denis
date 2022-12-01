//
//  ContentView.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 01.12.2022.
//

import SwiftUI



struct Radio: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.white
            }
            .navigationTitle("Радио")
        }
    }
}

struct Search: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.white
            }
            .navigationTitle("Поиск")
        }
    }
}


struct ContentView: View {
    var body: some View {
        TabView {
            LibraryView()
                .tabItem {
                    Image(systemName: "externaldrive.fill")
                    Text("Медиатека")
                }

            Radio()
                .tabItem {
                    Image(systemName: "radio")
                    Text("Радио")
                }
            Search()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Поиск")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
