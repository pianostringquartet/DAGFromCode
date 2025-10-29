---
title: supportsRemoteScenes
description: Indicates if the current device supports presenting a  on a remote device.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/supportsremotescenes
timestamp: 2025-10-29T00:13:00.002Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# supportsRemoteScenes

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Indicates if the current device supports presenting a  on a remote device.

```swift
var supportsRemoteScenes: Bool { get }
```

## Discussion

Use this to provide affordances for displaying your app’s content on a remote device.

```swift
struct NewSolarSystemImmersiveSpaceButton: View {
    @Environment(\.openImmersiveSpace) private var openImmersiveSpace
    @Environment(\.supportsRemoteScenes) private var supportsRemoteScenes

    var body: some View {
        Button("Present Solar System") {
            Task {
                await openImmersiveSpace(id: "solarSystem")
            }
        }
        .disabled(!supportsRemoteScenes)
        .help(!supportsRemoteScenes
            ? "Presenting remote scenes is not supported on this device."
            : "")
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
