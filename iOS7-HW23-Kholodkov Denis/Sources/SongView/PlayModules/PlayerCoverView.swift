//
//  PlayerCoverView.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 16.12.2022.
//

import SwiftUI

struct PlayerCoverView: View {

    @Binding var expand: Bool
    @Binding var isPlaying: Bool
    @EnvironmentObject var currentMusic: CurrentMusic

    var body: some View {

        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(UIColor.systemGray5))
                .frame(width: 70, height: 70)
                .shadow(radius: 5, x: 2, y: 2)
                .opacity(0.4)
            Image(systemName: "music.note")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .opacity(0.1)

            Image(currentMusic.coverImage)
                .resizable()
                .frame(width: expand ? Metric.screenHeight / 3 : 70,
                       height: expand ? Metric.screenHeight / 3 : 70)
                .cornerRadius(expand ? 10 : 0)
                .shadow(radius: 5, x: 2, y: 2)
                .scaledToFit()
        }
        .padding(20)
    }
}

extension PlayerCoverView {
    enum Metric {
        static var playerHeight: CGFloat = 90
        static var screenHeight = UIScreen.main.bounds.height
    }
}
//struct PlayerCoverView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlayerCoverView()
//    }
//}
