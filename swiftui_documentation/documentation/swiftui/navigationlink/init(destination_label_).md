---
title: init(destination:label:)
description: Creates a navigation link that presents the destination view.
source: https://developer.apple.com/documentation/swiftui/navigationlink/init(destination:label:)
timestamp: 2025-10-29T00:13:59.608Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationlink](/documentation/swiftui/navigationlink)

**Initializer**

# init(destination:label:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a navigation link that presents the destination view.

```swift
init(@ViewBuilder destination: () -> Destination, @ViewBuilder label: () -> Label)
```

## Parameters

**destination**

A view for the navigation link to present.



**label**

A view builder to produce a label describing the `destination` to present.



## Presenting a destination view

- [init(_:destination:)](/documentation/swiftui/navigationlink/init(_:destination:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
