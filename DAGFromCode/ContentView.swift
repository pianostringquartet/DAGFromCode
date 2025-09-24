//
//  ContentView.swift
//  DAGFromCode
//
//  Created by Christian J Clampitt on 9/24/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        DAGDebugView()
            .frame(minWidth: 1000, minHeight: 700)
    }
}

#Preview {
    ContentView()
}
