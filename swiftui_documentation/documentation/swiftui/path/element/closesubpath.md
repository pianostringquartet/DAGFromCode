---
title: Path.Element.closeSubpath
description: A line from the start point of the current subpath (if any) to the current point, which terminates the subpath.
source: https://developer.apple.com/documentation/swiftui/path/element/closesubpath
timestamp: 2025-10-29T00:12:59.528Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [path](/documentation/swiftui/path) › [element](/documentation/swiftui/path/element)

**Case**

# Path.Element.closeSubpath

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A line from the start point of the current subpath (if any) to the current point, which terminates the subpath.

```swift
case closeSubpath
```

## Discussion

After closing the subpath, the current point becomes undefined.

## Getting path elements

- [Path.Element.curve(to:control1:control2:)](/documentation/swiftui/path/element/curve(to:control1:control2:))
- [Path.Element.line(to:)](/documentation/swiftui/path/element/line(to:))
- [Path.Element.move(to:)](/documentation/swiftui/path/element/move(to:))
- [Path.Element.quadCurve(to:control:)](/documentation/swiftui/path/element/quadcurve(to:control:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
