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
            Image(Metric.imageSongName)
                .foregroundColor(.gray)
                .frame(width: Metric.imageSize,
                       height: Metric.imageSize)
                .cornerRadius(Metric.cornerRadiusValue)
                .shadow(radius: Metric.shadowRadiusValue)
                .padding()
            Text(Metric.nameSong)
            Spacer()
            Button(action: {}) {
                Image(systemName: Metric.buttonPlayName)
                    .foregroundColor(.black)
                    .font(.title3)
            }
            Button(action: {}) {
                Image(systemName: Metric.buttonForward)
                    .foregroundColor(.black)
                    .font(.title3)
                    .padding()
            }
        }
        .background(Color(Metric.backColor))
        .overlay(Divider(), alignment: .bottom)
    }
}

struct SongView_Previews: PreviewProvider {
    static var previews: some View {
        SongView()
    }
}

extension SongView {
    enum Metric {
        static let imageSongName = "dmx_d"
        static let nameSong = "DMX - One love"
        
        static let buttonPlayName = "play.fill"
        static let buttonForward = "forward.fill"
        static let backColor = "greyColor"
        
        static let imageSize: CGFloat = 60
        static let cornerRadiusValue: CGFloat = 6
        static let shadowRadiusValue: CGFloat = 8
    }
}
