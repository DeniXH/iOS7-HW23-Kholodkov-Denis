//
//  iOS7_HW23_Kholodkov_DenisApp.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 01.12.2022.
//

import SwiftUI

@main
struct iOS7_HW23_Kholodkov_DenisApp: App {
    
    @StateObject var currentMusic = CurrentMusic()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear(perform: UIApplication.shared.addTapGestureRecognizer)
                .environmentObject(currentMusic)
        }
    }
}

extension UIApplication {
    func addTapGestureRecognizer() {
        guard let window = (connectedScenes.first as? UIWindowScene)?.windows.first else { return }
        let tapGesture = UITapGestureRecognizer(target: window, action: #selector(UIView.endEditing))
        tapGesture.requiresExclusiveTouchType = false
        tapGesture.cancelsTouchesInView = false
        tapGesture.delegate = self
        window.addGestureRecognizer(tapGesture)
    }
}

extension UIApplication: UIGestureRecognizerDelegate {
    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer,
                                  shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
}

struct ImageCoversModifier: ViewModifier {
    func body (content: Content) -> some View {
        content
            .aspectRatio(contentMode: .fill)
            .frame(width: (UIScreen.main.bounds.width - Metric.widthIdent) / Metric.two,
                   height: Metric.height)
            .cornerRadius(Metric.cornerRadius)
    }
}

extension View {
    func imageCoverStyle() -> some View {
        self.modifier(ImageCoversModifier())
    }
}

extension ImageCoversModifier {
    enum Metric {
        static let widthIdent: CGFloat = 50
        static let two: CGFloat = 2
        static let height: CGFloat = 180
        static let cornerRadius: CGFloat = 15
    }
}
