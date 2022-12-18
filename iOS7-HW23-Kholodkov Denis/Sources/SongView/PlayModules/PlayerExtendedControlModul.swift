//
//  PlayerExtendedControlModul.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 16.12.2022.
//

import SwiftUI

struct PlayerExtendedControlModul: View {

    @Binding var isPlaying: Bool

    var body: some View {
        HStack {
            Button {
                print(Metric.buttonGobackward)
            } label: {
                PlayerButtonImage(systemName: Metric.buttonGobackward, size: Metric.buttonSize)
                    .foregroundColor(.secondary)
            }
            Spacer()
            Button {
                print(Metric.buttonPrint)
                isPlaying.toggle()
            } label: {
                PlayerButtonImage(systemName: isPlaying ? Metric.pauseImageName : Metric.playImageName,
                                  size: Metric.buttonSize)
            }
            Spacer()
            Button {
                print(Metric.buttonGoforward)
            } label: {
                PlayerButtonImage(systemName: Metric.buttonGoforward, size: Metric.buttonSize)
            }
        }
        .padding([.leading, .trailing], Metric.hstackPadding)
    }
}

extension PlayerExtendedControlModul {
    enum Metric {
        static let buttonGoforward = "goforward.15"
        static let buttonSize: CGFloat = 35
        static let buttonGobackward = "gobackward.15"

        static let buttonPrint = "play"
        static let pauseImageName = "pause.fill"
        static let playImageName = "play.fill"

        static let hstackPadding: CGFloat = 40
    }
}
