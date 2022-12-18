//
//  SongView.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 01.12.2022.
//

import SwiftUI

struct SongView: View {
//    var body: some View {
//        HStack {
//            Image(Metric.imageSongName)
//                .foregroundColor(.gray)
//                .frame(width: Metric.imageSize,
//                       height: Metric.imageSize)
//                .cornerRadius(Metric.cornerRadiusValue)
//                .shadow(radius: Metric.shadowRadiusValue)
//                .padding()
//            Text(Metric.nameSong)
//            Spacer()
//            Button(action: {}) {
//                Image(systemName: Metric.buttonPlayName)
//                    .foregroundColor(.black)
//                    .font(.title3)
//            }
//            Button(action: {}) {
//                Image(systemName: Metric.buttonForward)
//                    .foregroundColor(.black)
//                    .font(.title3)
//                    .padding()
//            }
//        }
//        .background(Color(Metric.backColor))
//        .overlay(Divider(), alignment: .bottom)
//    }
//}
//
//struct SongView_Previews: PreviewProvider {
//    static var previews: some View {
//        SongView()
//    }
//}
//
//extension SongView {
//    enum Metric {
//        static let imageSongName = "dmx_d"
//        static let nameSong = "DMX - One love"
//
//        static let buttonPlayName = "play.fill"
//        static let buttonForward = "forward.fill"
//        static let backColor = "greyColor"
//
//        static let imageSize: CGFloat = 60
//        static let cornerRadiusValue: CGFloat = 6
//        static let shadowRadiusValue: CGFloat = 8
//    }
//}
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
                .frame(maxHeight: expand ? .infinity : 90)
                .opacity(0.95)

            VStack {

                if expand {
                Capsule()
                    .fill(.secondary)
                    .frame(width: expand ? 60 : 0, height: expand ? 4 : 0)
                    .opacity(expand ? 1 : 0)
                    .padding(.top, expand ? 30 : 0)
                    .padding(.vertical, expand ? 30 : 0)
                }

                HStack {

                    PlayerCoverView(expand: $expand, isPlaying: $isPlaying)

                    if !expand {
                        Text(currentMusic.track)
                            .font(.title3)
                            .matchedGeometryEffect(id: "Title", in: animation)
                            .padding(.leading, -10)

                        Spacer()

                        Button {
                            print("play")
                            isPlaying.toggle()
                        } label: {
                            PlayerButtonImage(systemName: isPlaying ? "pause.fill" : "play.fill", size: 25)
                        }

                        Button {
                            print("play")
                        } label: {
                            PlayerButtonImage(systemName: "forward.fill", size: 25)
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
                           .matchedGeometryEffect(id: "Title", in: animation)

                            Spacer()

                            Button {
                                print("more...")
                            } label: {
                                PlayerButtonImage(systemName: "ellipsis", size: 20)
                            }
                        }
                        .padding()

                        PlayerProgressLine()

                        PlayerExtendedControlModul(isPlaying: $isPlaying)

                        HStack(spacing: 15) {
                            Image(systemName: "speaker.fill")
                            Slider(value: $volume, in: 0...10, onEditingChanged: {_ in
                                print("volume \(volume)")
                            })
                                .tint(.gray)
                            Image(systemName: "speaker.wave.2.fill")
                        }
                        .padding()

                        PlayerExtendedBottomButtons()
                            .padding()
                    }
                    .frame(width: expand ? nil : 0, height: expand ? nil : 0)
                    .opacity(expand ? 1 : 0)
                }
                if expand {
                    Spacer()
                }
            }
        }
        .onTapGesture(count: 1) {
            withAnimation(.spring()){
                expand.toggle()
            }
        }
    }
}

//enum Metric {
//    static var playerHeight: CGFloat = 90
//    static var screenHeight = UIScreen.main.bounds.height
//}
