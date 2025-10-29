---
title: init()
description: Initializes an instance with default spacing values.
source: https://developer.apple.com/documentation/swiftui/viewspacing/init()
timestamp: 2025-10-29T00:15:13.156Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [viewspacing](/documentation/swiftui/viewspacing)

**Initializer**

# init()

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Initializes an instance with default spacing values.

```swift
init()
```

## Discussion

Use this initializer to create a spacing preferences instance with default values. Then use [formUnion(_:edges:)](/documentation/swiftui/viewspacing/formunion(_:edges:)) to combine preferences from other views with the new instance. You typically do this in a custom layout’s implementation of the [spacing(subviews:cache:)](/documentation/swiftui/layout/spacing(subviews:cache:)) method.

## Creating spacing instances

- [zero](/documentation/swiftui/viewspacing/zero)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
