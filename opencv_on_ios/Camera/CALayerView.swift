//
//  CALayerView.swift
//  opencv_on_ios
//
// https://qiita.com/From_F

import SwiftUI

struct CameraView : View {
    @ObservedObject private var cameraViewModel = CameraViewModel()

    var body: some View {
        ZStack(alignment: .bottom) {
            CALayerView(
                caLayer: cameraViewModel.previewLayer)
        }.onAppear {
            self.cameraViewModel.startSession()
        }.onDisappear {
            self.cameraViewModel.endSession()
        }
    }
}

struct CALayerView: UIViewControllerRepresentable {
    var caLayer:CALayer

    func makeUIViewController(
            context: UIViewControllerRepresentableContext<CALayerView>) -> UIViewController {
        let viewController = UIViewController()

        viewController.view.layer.addSublayer(caLayer)
        caLayer.frame = viewController.view.layer.frame

        return viewController
    }

    func updateUIViewController(
            _
            uiViewController: UIViewController,
            context: UIViewControllerRepresentableContext<CALayerView>) {
        caLayer.frame = uiViewController.view.layer.frame
    }
}
