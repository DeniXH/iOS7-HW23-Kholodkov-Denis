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
            RoundedRectangle(cornerRadius: Metric.roundedRectangleCornerRadius)
                .fill(Color(UIColor.systemGray5))
                .frame(width: Metric.roundedRectangleFrame,
                       height: Metric.roundedRectangleFrame)
                .shadow(radius: Metric.roundedRectangleRadius,
                        x: Metric.roundedRectangleX,
                        y: Metric.roundedRectangleY)
                .opacity(Metric.roundedRectangleOpacity)
            Image(systemName: Metric.musicImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: Metric.musicImageFrame,
                       height: Metric.musicImageFrame)
                .opacity(Metric.musicImageOpacity)

            Image(currentMusic.coverImage)
                .resizable()
                .frame(width: expand ? Metric.screenHeight / Metric.three : Metric.seventy,
                       height: expand ? Metric.screenHeight / Metric.three : Metric.seventy)
                .cornerRadius(expand ? Metric.currentMusicImageCornerRadius : Metric.zero)
                .shadow(radius: Metric.currentMusicImageRadius,
                        x: Metric.currentMusicImageX,
                        y: Metric.currentMusicImageY)
                .scaledToFit()
        }
        .padding(Metric.zstackPadding)
    }
}

extension PlayerCoverView {
    enum Metric {
        static var playerHeight: CGFloat = 90
        static var screenHeight = UIScreen.main.bounds.height
        static let roundedRectangleCornerRadius: CGFloat = 10
        static let roundedRectangleFrame: CGFloat = 70
        static let roundedRectangleRadius: CGFloat = 5
        static let roundedRectangleX: CGFloat = 2
        static let roundedRectangleY: CGFloat = 2
        static let roundedRectangleOpacity: CGFloat = 0.4

        static let musicImageName = "music.note"
        static let musicImageFrame: CGFloat = 30
        static let musicImageOpacity: CGFloat = 0.1
        static let three: CGFloat = 3
        static let seventy: CGFloat = 70
        static let currentMusicImageRadius: CGFloat = 5
        static let currentMusicImageX: CGFloat = 2
        static let currentMusicImageY: CGFloat = 2
        static let currentMusicImageCornerRadius: CGFloat = 10
        static let zero: CGFloat = 0
        static let zstackPadding: CGFloat = 20


    }
}
