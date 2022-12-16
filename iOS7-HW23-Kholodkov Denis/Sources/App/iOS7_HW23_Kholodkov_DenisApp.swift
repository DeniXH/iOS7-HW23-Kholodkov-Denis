//
//  iOS7_HW23_Kholodkov_DenisApp.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 01.12.2022.
//

import SwiftUI

@main
struct iOS7_HW23_Kholodkov_DenisApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ImageCoversModifier: ViewModifier {
    func body (content: Content) -> some View {
        content
            .aspectRatio(contentMode: .fill)
            .frame(width: (UIScreen.main.bounds.width - 50) / 2,
                   height: 180)
            .cornerRadius(15)
    }
}

extension View {
    func imageCoverStyle() -> some View {
        self.modifier(ImageCoversModifier())
    }
}
