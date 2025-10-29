---
title: layoutDirectionBehavior(_:)
description: Sets the behavior of this view for different layout directions.
source: https://developer.apple.com/documentation/swiftui/view/layoutdirectionbehavior(_:)
timestamp: 2025-10-29T00:09:51.808Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# layoutDirectionBehavior(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Sets the behavior of this view for different layout directions.

```swift
nonisolated func layoutDirectionBehavior(_ behavior: LayoutDirectionBehavior) -> some View
```

## Parameters

**behavior**

A LayoutDirectionBehavior value that indicates whether this view should mirror in a particular layout direction. By default, views will adjust their layouts automatically in a right-to-left context and do not need to be mirrored.



## Return Value

A view that conditionally mirrors its contents horizontally in a given layout direction.

## Discussion

Use `layoutDirectionBehavior(_:)` when you need the system to horizontally mirror the contents of the view when presented in a layout direction.

To override the layout direction for a specific view, use the [environment(_:_:)](/documentation/swiftui/view/environment(_:_:)) view modifier to explicitly override the [layout Direction](/documentation/swiftui/environmentvalues/layoutdirection) environment value for the view.

## Setting a layout direction

- [LayoutDirectionBehavior](/documentation/swiftui/layoutdirectionbehavior)
- [layoutDirection](/documentation/swiftui/environmentvalues/layoutdirection)
- [LayoutDirection](/documentation/swiftui/layoutdirection)
- [LayoutRotationUnaryLayout](/documentation/swiftui/layoutrotationunarylayout)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
