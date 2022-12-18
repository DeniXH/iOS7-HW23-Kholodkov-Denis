//
//  SongView.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 01.12.2022.
//

import SwiftUI

struct SongView: View {

    var animation: Namespace.ID
    @Binding var isPlaying: Bool
    @Binding var expand: Bool
    @State private var volume: CGFloat = 7
    @State private var albums = Music().albums
    @EnvironmentObject var currentMusic: CurrentMusic
  

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(UIColor.secondarySystemBackground))
                .frame(maxHeight: expand ? .infinity : Metric.rectangleFrameMaxWidth)
                .opacity(Metric.rectangleOpacity)

            VStack {

                if expand {
                Capsule()
                    .fill(.secondary)
                    .frame(width: expand ? Metric.capsuleWidth : Metric.zero,
                           height: expand ? Metric.capsuleHeight : Metric.zero)
                    .opacity(expand ? Metric.capsuleOpacity : Metric.zero)
                    .padding(.top, expand ? Metric.capsulePadding : Metric.zero)
                    .padding(.vertical, expand ? Metric.capsulePadding : Metric.zero)
                }

                HStack {

                    PlayerCoverView(expand: $expand, isPlaying: $isPlaying)

                    if !expand {
                        Text(currentMusic.track)
                            .font(.title3)
                            .matchedGeometryEffect(id: Metric.currentMusicHeader, in: animation)
                            .padding(.leading, Metric.currentMusicLeading)

                        Spacer()

                        Button {
                            print(Metric.buttonPlayPrint)
                            isPlaying.toggle()
                        } label: {
                            PlayerButtonImage(systemName: isPlaying ? Metric.pauseImageName : Metric.pauseImageName,
                                              size: Metric.buttonPlaySize)
                        }

                        Button {
                            print(Metric.buttonPlayPrint)
                        } label: {
                            PlayerButtonImage(systemName: Metric.forwardImageName,
                                              size: Metric.buttonPlaySize)
                        }
                    }
                }

                // MARK: - Expanded view

                if expand {
                    VStack {
                        HStack {
                            VStack(alignment: .leading, spacing: 10) {
                                Text(currentMusic.track)
                                    .font(.title3)

                                Text(currentMusic.album)
                                    .foregroundColor(.secondary)
                            }
                            .matchedGeometryEffect(id: Metric.currentMusicHeader, in: animation)

                            Spacer()

                            Button {
                                print(Metric.more)
                            } label: {
                                PlayerButtonImage(systemName: Metric.elipsisImageName, size: Metric.elipsisSize)
                            }
                        }
                        .padding()

                        PlayerProgressLine()

                        PlayerExtendedControlModul(isPlaying: $isPlaying)

                        HStack(spacing: Metric.hstackSpacing) {
                            Image(systemName: Metric.speakerImageName)
                            Slider(value: $volume, in: 0...10, onEditingChanged: {_ in
                                print("\(Metric.volumePrint) \(volume)")
                            })
                                .tint(.gray)
                            Image(systemName: Metric.speakerWaveImageName)
                        }
                        .padding()

                        PlayerExtendedBottomButtons()
                            .padding()
                    }
                    .frame(width: expand ? nil : Metric.zero, height: expand ? nil : Metric.zero)
                    .opacity(expand ? Metric.hstackOpacity : Metric.zero)
                }
                if expand {
                    Spacer()
                }
            }
        }
        .onTapGesture(count: Metric.onTapGestureCount) {
            withAnimation(.spring()){
                expand.toggle()
            }
        }
    }
}

extension SongView {
    enum Metric {
        static let rectangleFrameMaxWidth: CGFloat = 90
        static let rectangleOpacity: CGFloat = 0.95
        static let zero: CGFloat = 0

        static let capsuleWidth: CGFloat = 60
        static let capsuleHeight: CGFloat = 4
        static let capsuleOpacity: CGFloat = 1
        static let capsulePadding: CGFloat = 30

        static let currentMusicHeader = "Title"
        static let currentMusicLeading: CGFloat = -10

        static let buttonPlayPrint = "play"
        static let pauseImageName = "pause.fill"
        static let playImageName = "play.fill"
        static let buttonPlaySize: CGFloat = 25
        static let forwardImageName = "forward.fill"
        static let more = "more..."
        static let elipsisImageName = "ellipsis"
        static let elipsisSize: CGFloat = 20

        static let hstackSpacing: CGFloat = 15
        static let speakerImageName = "speaker.fill"
        static let speakerWaveImageName = "speaker.wave.2.fill"
        static let volumePrint = "volume"
        static let hstackOpacity: CGFloat = 1
        static let onTapGestureCount = 1

    }
}
