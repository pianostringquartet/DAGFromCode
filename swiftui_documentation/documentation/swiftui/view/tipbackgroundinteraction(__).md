---
title: tipBackgroundInteraction(_:)
description: Controls whether people can interact with the view behind a presented tip.
source: https://developer.apple.com/documentation/swiftui/view/tipbackgroundinteraction(_:)
timestamp: 2025-10-29T00:13:34.420Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# tipBackgroundInteraction(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+

> Controls whether people can interact with the view behind a presented tip.

```swift
nonisolated func tipBackgroundInteraction(_ interaction: PresentationBackgroundInteraction) -> some View
```

## Parameters

**interaction**

A specification of how people can interact with the view behind a presented tip.



### Discussion

On many platforms, SwiftUI automatically disables the view behind a popover tip that you present, so that people can’t interact with the backing view until they dismiss the tip. Use this modifier if you want to enable interaction.

The following example enables people to interact with the view behind a `popoverTip`.

```swift
struct LandmarkDetail: View {
    let landmark: Landmark

    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .popoverTip(CampsiteTip())
                .tipBackgroundInteraction(.enabled)

            HStack {
                Text(landmark.name)
                Text(landmark.park)
            }
        }
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
