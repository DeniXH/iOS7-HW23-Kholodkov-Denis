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
                Text("Ищете свою музыку?")
                    .bold()
                    .font(.title2)
                    .padding(0.5)
                Text("Здесь появится купленная Вами в iTunes Store музыка.")
                    .multilineTextAlignment(.center)
                    .font(.title3)
                    .foregroundColor(.gray)
                    .padding(.leading, 15)
                    .padding(.trailing, 15)
                Spacer()
                //  SongView()
            }
            .navigationTitle("Медиатека")
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
