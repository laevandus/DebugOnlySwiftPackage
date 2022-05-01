//
//  DebugView.swift
//  
//
//  Created by Toomas Vahter on 30.04.2022.
//

#if DEBUG
import SwiftUI

public struct DebugView: View {
    public init() {}
    
    public var body: some View {
        Text("Debug View")
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        DebugView()
    }
}
#endif
