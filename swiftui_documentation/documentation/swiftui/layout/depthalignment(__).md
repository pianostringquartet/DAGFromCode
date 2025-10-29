---
title: depthAlignment(_:)
description: Sets the depth alignment for this layout.
source: https://developer.apple.com/documentation/swiftui/layout/depthalignment(_:)
timestamp: 2025-10-29T00:10:01.231Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [layout](/documentation/swiftui/layout)

**Instance Method**

# depthAlignment(_:)

**Available on:** visionOS 26.0+

> Sets the depth alignment for this layout.

```swift
func depthAlignment(_ alignment: DepthAlignment) -> some Layout
```

## Parameters

**alignment**

A [Depth Alignment](/documentation/swiftui/depthalignment) value to use for aligning layout’s subviews



## Discussion

Use `depthAlignment(_:)` to specify a depth guide for aligning subviews of this layout.

In the example below, the button to play the robot animation is aligned to the `.front` of the `HStack`.

```swift
   let depthStack = HStackLayout().depthAlignment(.front)
   depthStack {
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
