---
title: truncationMode
description: A value that indicates how the layout truncates the last line of text to fit into the available space.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/truncationmode
timestamp: 2025-10-29T00:13:14.357Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# truncationMode

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A value that indicates how the layout truncates the last line of text to fit into the available space.

```swift
var truncationMode: Text.TruncationMode { get set }
```

## Discussion

The default value is [tail](/documentation/swiftui/text/truncationmode/tail). Some controls, however, might have a different default if appropriate.

## Managing text layout

- [truncationMode(_:)](/documentation/swiftui/view/truncationmode(_:))
- [allowsTightening(_:)](/documentation/swiftui/view/allowstightening(_:))
- [allowsTightening](/documentation/swiftui/environmentvalues/allowstightening)
- [minimumScaleFactor(_:)](/documentation/swiftui/view/minimumscalefactor(_:))
- [minimumScaleFactor](/documentation/swiftui/environmentvalues/minimumscalefactor)
- [baselineOffset(_:)](/documentation/swiftui/view/baselineoffset(_:))
- [kerning(_:)](/documentation/swiftui/view/kerning(_:))
- [tracking(_:)](/documentation/swiftui/view/tracking(_:))
- [flipsForRightToLeftLayoutDirection(_:)](/documentation/swiftui/view/flipsforrighttoleftlayoutdirection(_:))
- [TextAlignment](/documentation/swiftui/textalignment)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
