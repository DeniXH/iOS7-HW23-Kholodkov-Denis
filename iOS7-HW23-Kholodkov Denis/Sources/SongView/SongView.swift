//
//  SongView.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 01.12.2022.
//

import SwiftUI

struct SongView: View {
    var body: some View {
        HStack {
            Image("dmx_d")
                .foregroundColor(.gray)
                .frame(width: 60,
                       height: 60)
                .cornerRadius(6)
                .shadow(radius: 8)
                .padding()
            Text("DMX - One love")
            Spacer()
            Button(action: {}) {
                Image(systemName: "play.fill")
                    .foregroundColor(.black)
                    .font(.title3)
            }
            Button(action: {}) {
                Image(systemName: "forward.fill")
                    .foregroundColor(.black)
                    .font(.title3)
                    .padding()
            }
        }
        .background(Color("greyColor"))
        .overlay(Divider(), alignment: .bottom)
    }
}

struct SongView_Previews: PreviewProvider {
    static var previews: some View {
        SongView()
    }
}
