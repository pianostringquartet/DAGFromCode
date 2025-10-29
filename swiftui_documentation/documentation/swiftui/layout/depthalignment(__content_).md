---
title: depthAlignment(_:content:)
description: Creates a layout view with the specified depth alignment.
source: https://developer.apple.com/documentation/swiftui/layout/depthalignment(_:content:)
timestamp: 2025-10-29T00:14:54.494Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [layout](/documentation/swiftui/layout)

**Instance Method**

# depthAlignment(_:content:)

**Available on:** visionOS 26.0+

> Creates a layout view with the specified depth alignment.

```swift
nonisolated func depthAlignment<Content>(_ alignment: DepthAlignment, @ViewBuilder content: () -> Content) -> some View where Content : View
```

## Parameters

**alignment**

A [Depth Alignment](/documentation/swiftui/depthalignment) value to use for aligning layout’s subviews



## Discussion

Use `depthAlignment(_:content:)` to specify a depth guide for aligning subviews of this layout.

In the example below, the button to play the robot animation is aligned to the `.front` of the `HStack`.

```swift
   HStackLayout().depthAlignment(.front) {
       RobotModel()
       Button("Play animation") {
           playRobotAnimation()
       }
       .glassBackgroundEffect()
   }
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
