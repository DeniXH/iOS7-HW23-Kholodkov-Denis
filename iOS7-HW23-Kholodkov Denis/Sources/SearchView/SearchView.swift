//
//  SearchView.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 13.12.2022.
//

import SwiftUI

struct SearchView: View {
@State private var searchText = "Ваша Медиатека"

    var body: some View {
        NavigationView {
           // Text("Поиск\(searchText)")
            ScrollView(.vertical, showsIndicators: false){}
            .navigationTitle("Поиск")
        }

        .searchable(text: $searchText)

    }

}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
