---
title: init(isActive:destination:label:)
description: Creates a navigation link that presents the destination view when active.
source: https://developer.apple.com/documentation/swiftui/navigationlink/init(isactive:destination:label:)
timestamp: 2025-10-29T00:14:07.236Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationlink](/documentation/swiftui/navigationlink)

**Initializer**

# init(isActive:destination:label:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a navigation link that presents the destination view when active.

```swift
init(isActive: Binding<Bool>, @ViewBuilder destination: () -> Destination, @ViewBuilder label: () -> Label)
```

## Parameters

**isActive**

A binding to a Boolean value that indicates whether `destination` is currently presented.



**destination**

A view for the navigation link to present.



**label**

A view builder to produce a label describing the `destination` to present.



## Creating links with view builders

- [init(_:isActive:destination:)](/documentation/swiftui/navigationlink/init(_:isactive:destination:))
- [init(_:tag:selection:destination:)](/documentation/swiftui/navigationlink/init(_:tag:selection:destination:))
- [init(tag:selection:destination:label:)](/documentation/swiftui/navigationlink/init(tag:selection:destination:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
