//
//  ContentView.swift
//  opencv_on_ios
//
//  Created by fukukazu kawata on 2020/07/18.
//  Copyright © 2020 fukukazu kawata. All rights reserved.
//
import SwiftUI

struct ContentView: View {
    @ObservedObject private var avFoundationVM = CameraViewModel()

    var body: some View {
        ZStack(alignment: .bottom) {
            CALayerView(
                caLayer: avFoundationVM.previewLayer)
        }.onAppear {
            self.avFoundationVM.startSession()
        }.onDisappear {
            self.avFoundationVM.endSession()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
