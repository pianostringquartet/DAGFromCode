---
title: cornerRadius(_:antialiased:)
description: Clips this view to its bounding frame, with the specified corner radius.
source: https://developer.apple.com/documentation/swiftui/view/cornerradius(_:antialiased:)
timestamp: 2025-10-29T00:12:00.021Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# cornerRadius(_:antialiased:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Clips this view to its bounding frame, with the specified corner radius.

```swift
nonisolated func cornerRadius(_ radius: CGFloat, antialiased: Bool = true) -> some View
```

## Parameters

**antialiased**

A Boolean value that indicates whether the rendering system applies smoothing to the edges of the clipping rectangle.



## Return Value

A view that clips this view to its bounding frame with the specified corner radius.

## Discussion

By default, a view’s bounding frame only affects its layout, so any content that extends beyond the edges of the frame remains visible. Use `cornerRadius(_:antialiased:)` to hide any content that extends beyond these edges while applying a corner radius.

The following code applies a corner radius of 25 to a text view:

```swift
Text("Rounded Corners")
    .frame(width: 175, height: 75)
    .foregroundColor(Color.white)
    .background(Color.black)
    .cornerRadius(25)
```



## Graphics and rendering modifiers

- [accentColor(_:)](/documentation/swiftui/view/accentcolor(_:))
- [mask(_:)](/documentation/swiftui/view/mask(_:))
- [animation(_:)](/documentation/swiftui/view/animation(_:)-1hc0p)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
