---
title: flipsForRightToLeftLayoutDirection(_:)
description: Sets whether this view mirrors its contents horizontally when the layout direction is right-to-left.
source: https://developer.apple.com/documentation/swiftui/view/flipsforrighttoleftlayoutdirection(_:)
timestamp: 2025-10-29T00:14:21.891Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# flipsForRightToLeftLayoutDirection(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets whether this view mirrors its contents horizontally when the layout direction is right-to-left.

```swift
nonisolated func flipsForRightToLeftLayoutDirection(_ enabled: Bool) -> some View
```

## Parameters

**enabled**

A Boolean value that indicates whether this view should have its content flipped horizontally when the layout direction is right-to-left. By default, views will adjust their layouts automatically in a right-to-left context and do not need to be mirrored.



## Return Value

A view that conditionally mirrors its contents horizontally when the layout direction is right-to-left.

## Discussion

Use `flipsForRightToLeftLayoutDirection(_:)` when you need the system to horizontally mirror the contents of the view when presented in a right-to-left layout.

To override the layout direction for a specific view, use the [environment(_:_:)](/documentation/swiftui/view/environment(_:_:)) view modifier to explicitly override the [layout Direction](/documentation/swiftui/environmentvalues/layoutdirection) environment value for the view.

## Managing text layout

- [truncationMode(_:)](/documentation/swiftui/view/truncationmode(_:))
- [truncationMode](/documentation/swiftui/environmentvalues/truncationmode)
- [allowsTightening(_:)](/documentation/swiftui/view/allowstightening(_:))
- [allowsTightening](/documentation/swiftui/environmentvalues/allowstightening)
- [minimumScaleFactor(_:)](/documentation/swiftui/view/minimumscalefactor(_:))
- [minimumScaleFactor](/documentation/swiftui/environmentvalues/minimumscalefactor)
- [baselineOffset(_:)](/documentation/swiftui/view/baselineoffset(_:))
- [kerning(_:)](/documentation/swiftui/view/kerning(_:))
- [tracking(_:)](/documentation/swiftui/view/tracking(_:))
- [TextAlignment](/documentation/swiftui/textalignment)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
