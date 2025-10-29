---
title: init(destinationName:label:)
description: Creates a navigation link that presents a view from a WatchKit storyboard.
source: https://developer.apple.com/documentation/swiftui/navigationlink/init(destinationname:label:)
timestamp: 2025-10-29T00:09:36.259Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationlink](/documentation/swiftui/navigationlink)

**Initializer**

# init(destinationName:label:)

**Available on:** watchOS 6.0+

> Creates a navigation link that presents a view from a WatchKit storyboard.

```swift
nonisolated init(destinationName: String, @ViewBuilder label: () -> Label)
```

## Parameters

**destinationName**

The storyboard name of a view for the navigation link to present.



**label**

A view builder to produce a label describing the `destination` to present.



## Creating links for WatchKit

- [init(destinationName:isActive:label:)](/documentation/swiftui/navigationlink/init(destinationname:isactive:label:))
- [init(destinationName:tag:selection:label:)](/documentation/swiftui/navigationlink/init(destinationname:tag:selection:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
