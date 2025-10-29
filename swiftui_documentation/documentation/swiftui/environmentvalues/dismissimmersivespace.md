---
title: dismissImmersiveSpace
description: An immersive space dismissal action stored in a view’s environment.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/dismissimmersivespace
timestamp: 2025-10-29T00:12:17.636Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# dismissImmersiveSpace

**Available on:** macOS 26.0+, visionOS 1.0+

> An immersive space dismissal action stored in a view’s environment.

```swift
var dismissImmersiveSpace: DismissImmersiveSpaceAction { get }
```

## Discussion

Use this environment value to get a [Dismiss Immersive Space Action](/documentation/swiftui/dismissimmersivespaceaction) instance for a given [Environment](/documentation/swiftui/environment). Then call the instance to dismiss a space. You call the instance directly because it defines a [callAsFunction()](/documentation/swiftui/dismissimmersivespaceaction/callasfunction()) method that Swift calls when you call the instance.

On macOS, this may be used to dismiss a remote immersive space declared with [Remote Immersive Space](/documentation/swiftui/remoteimmersivespace).

For example, you can define a button that dismisses an immersive space:

```swift
@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            DismissImmersiveSpaceButton()
        }
        ImmersiveSpace(id: "solarSystem") {
            SolarSystemView()
        }
    }
}

struct DismissImmersiveSpaceButton: View {
    @Environment(\.dismissImmersiveSpace) private var dismissImmersiveSpace

    var body: some View {
        Button("Dismiss") {
            Task {
                await dismissImmersiveSpace()
            }
        }
    }
}
```

The asynchronous call returns after the system finishes dismissing the space. Unlike the call to [open Immersive Space](/documentation/swiftui/environmentvalues/openimmersivespace) that you use to open the space — which requires an identifier, a value, or both to specify which space to open — the dismiss action requires no parameters because there can be only one immersive space open at a time. The call closes the space that is currently open, if any.

## Closing the immersive space

- [DismissImmersiveSpaceAction](/documentation/swiftui/dismissimmersivespaceaction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
