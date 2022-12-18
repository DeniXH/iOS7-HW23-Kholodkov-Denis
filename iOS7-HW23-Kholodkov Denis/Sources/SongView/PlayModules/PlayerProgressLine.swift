//
//  PlayerProgressLine.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 16.12.2022.
//

import SwiftUI

struct PlayerProgressLine: View {
    var body: some View {
        VStack() {
            ZStack(alignment: .leading) {
                Rectangle()
                    .fill(.gray)
                    .frame(height: Metric.rectangleHeight)
                    .padding()
                Circle()
                    .fill(.gray)
                    .frame(width: Metric.circleFrame,
                           height: Metric.circleFrame)
                    .padding(.leading, Metric.circlePadding)
            }
            
            HStack {
                Text(Metric.hstackFirst)
                Spacer()
                Text(Metric.hstackSecond)
            }
            .font(.caption)
            .foregroundColor(.secondary)
            .padding([.trailing, .leading])
            .offset(y: Metric.hstackOffset)
        }
    }
}

struct ProgressLine_Previews: PreviewProvider {
    static var previews: some View {
        PlayerProgressLine()
    }
}

extension PlayerProgressLine {
    enum Metric {
        static let rectangleHeight: CGFloat = 2
        static let circleFrame: CGFloat = 7
        static let circlePadding: CGFloat = 100

        static let hstackFirst = "0:27"
        static let hstackSecond = "-4:13"
        static let hstackOffset: CGFloat = -11

    }
}
