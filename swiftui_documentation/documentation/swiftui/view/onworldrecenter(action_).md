---
title: onWorldRecenter(action:)
description: Adds an action to perform when recentering the view with the digital crown.
source: https://developer.apple.com/documentation/swiftui/view/onworldrecenter(action:)
timestamp: 2025-10-29T00:10:20.287Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onWorldRecenter(action:)

**Available on:** visionOS 26.0+

> Adds an action to perform when recentering the view with the digital crown.

```swift
nonisolated func onWorldRecenter(action: @escaping @MainActor () -> Void) -> some View
```

## Parameters

**action**

A closure to run when the view is recentered. This will run when the app has been recentered and is about to fade back in, equivalent to `WorldRecenterPhase.ended`.



## Discussion

```swift
struct ContentView: View {
    @State private var mascot = Mascot()
    var body: some View {
        WelcomeView(mascot: mascot)
            .onWorldRecenter {
                mascot.wave()
            }
    }
}
```

When the user recenters their view, the app will fade out and then be repositioned. Once it has been repositioned, the action will be called and the app will fade back in. The action will be called if the app is not backgrounded or suspended.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
