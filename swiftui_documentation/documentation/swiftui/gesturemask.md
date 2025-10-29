---
title: GestureMask
description: Options that control how adding a gesture to a view affects other gestures recognized by the view and its subviews.
source: https://developer.apple.com/documentation/swiftui/gesturemask
timestamp: 2025-10-29T00:15:02.450Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# GestureMask

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Options that control how adding a gesture to a view affects other gestures recognized by the view and its subviews.

```swift
@frozen struct GestureMask
```

## Conforms To

- [BitwiseCopyable](/documentation/Swift/BitwiseCopyable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [ExpressibleByArrayLiteral](/documentation/Swift/ExpressibleByArrayLiteral)
- [OptionSet](/documentation/Swift/OptionSet)
- [RawRepresentable](/documentation/Swift/RawRepresentable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [SetAlgebra](/documentation/Swift/SetAlgebra)

## Getting gesture options

- [all](/documentation/swiftui/gesturemask/all) Enable both the added gesture as well as all other gestures on the view and its subviews.
- [gesture](/documentation/swiftui/gesturemask/gesture) Enable the added gesture but disable all gestures in the subview hierarchy.
- [subviews](/documentation/swiftui/gesturemask/subviews) Enable all gestures in the subview hierarchy but disable the added gesture.
- [none](/documentation/swiftui/gesturemask/none) Disable all gestures in the subview hierarchy, including the added gesture.

## Recognizing gestures that change over time

- [gesture(_:)](/documentation/swiftui/view/gesture(_:))
- [gesture(_:isEnabled:)](/documentation/swiftui/view/gesture(_:isenabled:))
- [gesture(_:name:isEnabled:)](/documentation/swiftui/view/gesture(_:name:isenabled:))
- [gesture(_:including:)](/documentation/swiftui/view/gesture(_:including:))
- [DragGesture](/documentation/swiftui/draggesture)
- [WindowDragGesture](/documentation/swiftui/windowdraggesture)
- [MagnifyGesture](/documentation/swiftui/magnifygesture)
- [RotateGesture](/documentation/swiftui/rotategesture)
- [RotateGesture3D](/documentation/swiftui/rotategesture3d)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
