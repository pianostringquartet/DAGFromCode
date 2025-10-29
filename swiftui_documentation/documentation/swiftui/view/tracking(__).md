---
title: tracking(_:)
description: Sets the tracking for the text in this view.
source: https://developer.apple.com/documentation/swiftui/view/tracking(_:)
timestamp: 2025-10-29T00:11:43.654Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# tracking(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Sets the tracking for the text in this view.

```swift
nonisolated func tracking(_ tracking: CGFloat) -> some View
```

## Parameters

**tracking**

The amount of additional space, in points, that the view should add to each character cluster after layout. Value of `0` sets the tracking to the system default value.



## Return Value

A view where text has the specified amount of tracking.

## Managing text layout

- [truncationMode(_:)](/documentation/swiftui/view/truncationmode(_:))
- [truncationMode](/documentation/swiftui/environmentvalues/truncationmode)
- [allowsTightening(_:)](/documentation/swiftui/view/allowstightening(_:))
- [allowsTightening](/documentation/swiftui/environmentvalues/allowstightening)
- [minimumScaleFactor(_:)](/documentation/swiftui/view/minimumscalefactor(_:))
- [minimumScaleFactor](/documentation/swiftui/environmentvalues/minimumscalefactor)
- [baselineOffset(_:)](/documentation/swiftui/view/baselineoffset(_:))
- [kerning(_:)](/documentation/swiftui/view/kerning(_:))
- [flipsForRightToLeftLayoutDirection(_:)](/documentation/swiftui/view/flipsforrighttoleftlayoutdirection(_:))
- [TextAlignment](/documentation/swiftui/textalignment)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
