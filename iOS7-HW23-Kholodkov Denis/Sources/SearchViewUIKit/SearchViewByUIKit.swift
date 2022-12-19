//
//  SearchViewByUIVC.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 19.12.2022.
//

import SwiftUI

struct SearchViewByUIKit: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> UIViewController {
        let navigationController = UINavigationController(rootViewController: SearchViewController())
        return navigationController
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}
