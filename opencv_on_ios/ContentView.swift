//
//  ContentView.swift
//  opencv_on_ios
//
//  Created by fukukazu kawata on 2020/07/18.
//  Copyright © 2020 fukukazu kawata. All rights reserved.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            CameraView()
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
