//
//  ContentView.swift
//  DebugOnlySwiftPackage
//
//  Created by Toomas Vahter on 30.04.2022.
//

import SwiftUI
#if DEBUG
import DebugFeatures
#endif

struct ContentView: View {
    @State var isSheetVisible = false
    
    var body: some View {
        VStack {
            Text("Hello, world!")
            Button("Debug View") {
                isSheetVisible.toggle()
            }
        }
        .padding()
        #if DEBUG
        .fullScreenCover(isPresented: $isSheetVisible, content: { DebugView()
        })
        #endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
