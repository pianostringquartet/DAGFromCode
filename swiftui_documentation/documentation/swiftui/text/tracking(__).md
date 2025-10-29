---
title: tracking(_:)
description: Sets the tracking for the text.
source: https://developer.apple.com/documentation/swiftui/text/tracking(_:)
timestamp: 2025-10-29T00:10:23.275Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text)

**Instance Method**

# tracking(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets the tracking for the text.

```swift
nonisolated func tracking(_ tracking: CGFloat) -> Text
```

## Parameters

**tracking**

The amount of additional space, in points, that the view should add to each character cluster after layout. Value of `0` sets the tracking to the system default value.



## Return Value

Text with the specified amount of tracking.

## Discussion

Tracking adds space, measured in points, between the characters in the text view. A positive value increases the spacing between characters, while a negative value brings the characters closer together.

```swift
VStack(alignment: .leading) {
    Text("ABCDEF").tracking(-3)
    Text("ABCDEF")
    Text("ABCDEF").tracking(3)
}
```

The code above uses an unusually large amount of tracking to make it easy to see the effect.



The effect of tracking resembles that of the [kerning(_:)](/documentation/swiftui/text/kerning(_:)) modifier, but adds or removes trailing whitespace, rather than changing character offsets. Also, using any nonzero amount of tracking disables nonessential ligatures, whereas kerning attempts to maintain ligatures.

> [!IMPORTANT]
> If you add both the [tracking(_:)](/documentation/swiftui/text/tracking(_:)) and [kerning(_:)](/documentation/swiftui/text/kerning(_:)) modifiers to a view, the view applies the tracking and ignores the kerning.

## Styling the view’s text

- [foregroundStyle(_:)](/documentation/swiftui/text/foregroundstyle(_:))
- [bold()](/documentation/swiftui/text/bold())
- [bold(_:)](/documentation/swiftui/text/bold(_:))
- [italic()](/documentation/swiftui/text/italic())
- [italic(_:)](/documentation/swiftui/text/italic(_:))
- [strikethrough(_:color:)](/documentation/swiftui/text/strikethrough(_:color:))
- [strikethrough(_:pattern:color:)](/documentation/swiftui/text/strikethrough(_:pattern:color:))
- [underline(_:color:)](/documentation/swiftui/text/underline(_:color:))
- [underline(_:pattern:color:)](/documentation/swiftui/text/underline(_:pattern:color:))
- [monospaced(_:)](/documentation/swiftui/text/monospaced(_:))
- [monospacedDigit()](/documentation/swiftui/text/monospaceddigit())
- [kerning(_:)](/documentation/swiftui/text/kerning(_:))
- [baselineOffset(_:)](/documentation/swiftui/text/baselineoffset(_:))
- [Text.Case](/documentation/swiftui/text/case)
- [Text.DateStyle](/documentation/swiftui/text/datestyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
