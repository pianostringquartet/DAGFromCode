---
title: init(_:)
description: Creates a type-erased value that wraps the specified layout.
source: https://developer.apple.com/documentation/swiftui/anylayout/init(_:)
timestamp: 2025-10-29T00:10:20.424Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [anylayout](/documentation/swiftui/anylayout)

**Initializer**

# init(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a type-erased value that wraps the specified layout.

```swift
init<L>(_ layout: L) where L : Layout
```

## Discussion

You can switch between type-erased layouts without losing the state of the subviews.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
