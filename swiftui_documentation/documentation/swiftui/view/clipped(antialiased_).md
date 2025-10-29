---
title: clipped(antialiased:)
description: Clips this view to its bounding rectangular frame.
source: https://developer.apple.com/documentation/swiftui/view/clipped(antialiased:)
timestamp: 2025-10-29T00:14:34.475Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# clipped(antialiased:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Clips this view to its bounding rectangular frame.

```swift
nonisolated func clipped(antialiased: Bool = false) -> some View
```

## Parameters

**antialiased**

A Boolean value that indicates whether the rendering system applies smoothing to the edges of the clipping rectangle.



## Return Value

A view that clips this view to its bounding frame.

## Discussion

Use the `clipped(antialiased:)` modifier to hide any content that extends beyond the layout bounds of the shape.

By default, a view’s bounding frame is used only for layout, so any content that extends beyond the edges of the frame is still visible.

```swift
Text("This long text string is clipped")
    .fixedSize()
    .frame(width: 175, height: 100)
    .clipped()
    .border(Color.gray)
```



## Masking and clipping

- [mask(alignment:_:)](/documentation/swiftui/view/mask(alignment:_:))
- [clipShape(_:style:)](/documentation/swiftui/view/clipshape(_:style:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
