---
title: init(id:makeContent:)
description: Creates a window group with an identifier.
source: https://developer.apple.com/documentation/swiftui/windowgroup/init(id:makecontent:)
timestamp: 2025-10-29T00:10:07.689Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [windowgroup](/documentation/swiftui/windowgroup)

**Initializer**

# init(id:makeContent:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Creates a window group with an identifier.

```swift
nonisolated init(id: String, @ViewBuilder makeContent: @escaping () -> Content)
```

## Parameters

**id**

A string that uniquely identifies the window group. Identifiers must be unique among the window groups in your app.



**makeContent**

A closure that creates the content for each instance of the group.



## Discussion

The window group uses the given view as a template to form the content of each window in the group.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
