---
title: kerning(_:)
description: Sets the spacing, or kerning, between characters for the text in this view.
source: https://developer.apple.com/documentation/swiftui/view/kerning(_:)
timestamp: 2025-10-29T00:13:26.133Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# kerning(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Sets the spacing, or kerning, between characters for the text in this view.

```swift
nonisolated func kerning(_ kerning: CGFloat) -> some View
```

## Parameters

**kerning**

The spacing to use between individual characters in text. Value of `0` sets the kerning to the system default value.



## Return Value

A view where text has the specified amount of kerning.

## Managing text layout

- [truncationMode(_:)](/documentation/swiftui/view/truncationmode(_:))
- [truncationMode](/documentation/swiftui/environmentvalues/truncationmode)
- [allowsTightening(_:)](/documentation/swiftui/view/allowstightening(_:))
- [allowsTightening](/documentation/swiftui/environmentvalues/allowstightening)
- [minimumScaleFactor(_:)](/documentation/swiftui/view/minimumscalefactor(_:))
- [minimumScaleFactor](/documentation/swiftui/environmentvalues/minimumscalefactor)
- [baselineOffset(_:)](/documentation/swiftui/view/baselineoffset(_:))
- [tracking(_:)](/documentation/swiftui/view/tracking(_:))
- [flipsForRightToLeftLayoutDirection(_:)](/documentation/swiftui/view/flipsforrighttoleftlayoutdirection(_:))
- [TextAlignment](/documentation/swiftui/textalignment)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
