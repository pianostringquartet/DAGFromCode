---
title: buildBlock(_:)
description: Passes a single view written as a child view through unmodified.
source: https://developer.apple.com/documentation/swiftui/viewbuilder/buildblock(_:)
timestamp: 2025-10-29T00:10:40.871Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [viewbuilder](/documentation/swiftui/viewbuilder)

**Type Method**

# buildBlock(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Passes a single view written as a child view through unmodified.

```swift
static func buildBlock<Content>(_ content: Content) -> Content where Content : View
```

## Discussion

An example of a single view written as a child view is `{ Text("Hello") }`.

## Building content

- [buildBlock()](/documentation/swiftui/viewbuilder/buildblock())
- [buildExpression(_:)](/documentation/swiftui/viewbuilder/buildexpression(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
