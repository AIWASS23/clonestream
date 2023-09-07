//
//  PreviewUI.swift
//  CloneStream
//
//  Created by Marcelo de Araújo on 09/12/2022.
//

import SwiftUI

struct PreviewUIViewController: UIViewControllerRepresentable {
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    var viewController: UIViewController
    
    func makeUIViewController(context: Context) -> some UIViewController {
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}

struct PreviewUIView: UIViewRepresentable {
    init(view: UIView) {
        self.view = view
    }
    var view: UIView
    
    func makeUIView(context: Context) -> some UIView {
        return self.view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
