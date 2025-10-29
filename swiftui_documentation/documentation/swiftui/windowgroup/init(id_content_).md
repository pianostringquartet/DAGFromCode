---
title: init(id:content:)
description: Creates a window group with an identifier.
source: https://developer.apple.com/documentation/swiftui/windowgroup/init(id:content:)
timestamp: 2025-10-29T00:15:00.495Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [windowgroup](/documentation/swiftui/windowgroup)

**Initializer**

# init(id:content:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Creates a window group with an identifier.

```swift
init(id: String, @ViewBuilder content: () -> Content)
```

## Parameters

**id**

A string that uniquely identifies the window group. Identifiers must be unique among the window groups in your app.



**content**

A closure that creates the content for each instance of the group.



## Discussion

The window group uses the given view as a template to form the content of each window in the group.

## Identifying a window group

- [init(_:id:content:)](/documentation/swiftui/windowgroup/init(_:id:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
