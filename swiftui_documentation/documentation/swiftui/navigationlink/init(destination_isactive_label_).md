---
title: init(destination:isActive:label:)
description: Creates a navigation link that presents the destination view when active.
source: https://developer.apple.com/documentation/swiftui/navigationlink/init(destination:isactive:label:)
timestamp: 2025-10-29T00:09:31.744Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationlink](/documentation/swiftui/navigationlink)

**Initializer**

# init(destination:isActive:label:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a navigation link that presents the destination view when active.

```swift
init(destination: Destination, isActive: Binding<Bool>, @ViewBuilder label: () -> Label)
```

## Parameters

**destination**

A view for the navigation link to present.



**isActive**

A binding to a Boolean value that indicates whether `destination` is currently presented.



**label**

A view builder to produce a label describing the `destination` to present.



## Creating links with view arguments

- [init(_:destination:isActive:)](/documentation/swiftui/navigationlink/init(_:destination:isactive:))
- [init(_:destination:tag:selection:)](/documentation/swiftui/navigationlink/init(_:destination:tag:selection:))
- [init(destination:tag:selection:label:)](/documentation/swiftui/navigationlink/init(destination:tag:selection:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
