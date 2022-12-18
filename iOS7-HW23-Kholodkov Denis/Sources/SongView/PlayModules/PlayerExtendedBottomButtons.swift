//
//  PlayerExtendedBottomButtons.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 16.12.2022.
//

import SwiftUI

struct PlayerExtendedBottomButtons: View {

    var body: some View {
        HStack(spacing: 50) {
            Button {
                print(Metric.buttonMessagePrint)
            } label: {
                PlayerButtonImage(systemName: Metric.buttonMessageImageName,
                                  size: Metric.buttonSize)
            }

            Button {
                print(Metric.buttonAirplayPrint)
            } label: {
                PlayerButtonImage(systemName: Metric.buttonAirplayImageName, size: Metric.buttonSize)
            }

            Button {
                print(Metric.buttonListPrint)
            } label: {
                PlayerButtonImage(systemName: Metric.buttonListImageName, size: Metric.buttonSize)
            }
        }
    }
}

struct PlayerExpandedBottomButtons_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlayerExtendedBottomButtons()

        }
    }
}

extension PlayerExtendedBottomButtons {
    enum Metric {
        static let buttonSize: CGFloat = 20

        static let buttonMessagePrint = "message"
        static let buttonMessageImageName = "arrow.up.message"

        static let buttonAirplayPrint = "airplay"
        static let buttonAirplayImageName = "airplayaudio"

        static let buttonListPrint = "list"
        static let buttonListImageName = "text.badge.plus"

    }
}
