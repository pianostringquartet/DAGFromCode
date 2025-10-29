//
//  ContentView.swift
//  DAGFromCode
//
//  Created by Christian J Clampitt on 9/24/25.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 2

    var body: some View {
        TabView(selection: $selectedTab) {
            DAGDebugView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Debug View")
                }
                .tag(0)

            DAGDebugViewWithGraph()
                .tabItem {
                    Image(systemName: "circle.hexagongrid")
                    Text("Graph View")
                }
                .tag(1)

            CodexBridgeView()
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Codex Bridge")
                }
                .tag(2)
        }
        .frame(minWidth: 1000, minHeight: 700)
    }
}

#Preview {
    ContentView()
}
