---
title: tabBarMinimizeBehavior(_:)
description: Sets the behavior for tab bar minimization.
source: https://developer.apple.com/documentation/swiftui/view/tabbarminimizebehavior(_:)
timestamp: 2025-10-29T00:14:05.834Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# tabBarMinimizeBehavior(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Sets the behavior for tab bar minimization.

```swift
nonisolated func tabBarMinimizeBehavior(_ behavior: TabBarMinimizeBehavior) -> some View
```

## Parameters

**behavior**

The minimize behavior.



## Discussion

The following TabView minimizes its tab bar when scrolling in the ‘Numbers’ or ‘Alerts’ tabs on iPhone.

```swift
struct ContentView: View {
    var body: some View {
         TabView {
             Tab("Numbers", systemImage: "number") {
                 ScrollView {
                    ForEach(0 ..< 50) { index in
                        Text("\(index)")
                            .padding()
                    }
                 }
             }
             Tab("Alerts", systemImage: "bell") {
                 AlertsView()
             }
         }
         .tabBarMinimizeBehavior(.onScrollDown)
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
