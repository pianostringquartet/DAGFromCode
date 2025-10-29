---
title: DismissImmersiveSpaceAction
description: An action that dismisses an immersive space.
source: https://developer.apple.com/documentation/swiftui/dismissimmersivespaceaction
timestamp: 2025-10-29T00:14:22.958Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# DismissImmersiveSpaceAction

**Available on:** macOS 26.0+, visionOS 1.0+

> An action that dismisses an immersive space.

```swift
@MainActor struct DismissImmersiveSpaceAction
```

## Overview

Use the [dismiss Immersive Space](/documentation/swiftui/environmentvalues/dismissimmersivespace) environment value to get an instance of this type for a given [Environment](/documentation/swiftui/environment). Then call the instance to dismiss a space. You call the instance directly because it defines a [callAsFunction()](/documentation/swiftui/dismissimmersivespaceaction/callasfunction()) method that Swift calls when you call the instance.

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

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Calling the action

- [callAsFunction()](/documentation/swiftui/dismissimmersivespaceaction/callasfunction()) Dismisses the currently opened immersive space.

## Closing the immersive space

- [dismissImmersiveSpace](/documentation/swiftui/environmentvalues/dismissimmersivespace)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
