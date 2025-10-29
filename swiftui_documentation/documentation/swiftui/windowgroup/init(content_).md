---
title: init(content:)
description: Creates a window group.
source: https://developer.apple.com/documentation/swiftui/windowgroup/init(content:)
timestamp: 2025-10-29T00:11:28.996Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [windowgroup](/documentation/swiftui/windowgroup)

**Initializer**

# init(content:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Creates a window group.

```swift
init(@ViewBuilder content: () -> Content)
```

## Parameters

**content**

A closure that creates the content for each instance of the group.



## Discussion

The window group uses the given view as a template to form the content of each window in the group.

## Creating a window group

- [init(_:content:)](/documentation/swiftui/windowgroup/init(_:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
