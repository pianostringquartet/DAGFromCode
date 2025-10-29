---
title: init(destinationName:isActive:label:)
description: Creates a navigation link that presents a view from a WatchKit storyboard when active.
source: https://developer.apple.com/documentation/swiftui/navigationlink/init(destinationname:isactive:label:)
timestamp: 2025-10-29T00:10:14.271Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationlink](/documentation/swiftui/navigationlink)

**Initializer**

# init(destinationName:isActive:label:)

**Available on:** watchOS 6.0+

> Creates a navigation link that presents a view from a WatchKit storyboard when active.

```swift
nonisolated init(destinationName: String, isActive: Binding<Bool>, @ViewBuilder label: () -> Label)
```

## Parameters

**destinationName**

The storyboard name of a view for the navigation link to present.



**isActive**

A binding to a Boolean value that indicates whether `destination` is currently presented.



**label**

A view builder to produce a label describing the `destination` to present.



## Creating links for WatchKit

- [init(destinationName:tag:selection:label:)](/documentation/swiftui/navigationlink/init(destinationname:tag:selection:label:))
- [init(destinationName:label:)](/documentation/swiftui/navigationlink/init(destinationname:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
