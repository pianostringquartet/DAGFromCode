---
title: init(id:content:)
description: Creates a customizable Touch Bar view container with a globally unique identifier.
source: https://developer.apple.com/documentation/swiftui/touchbar/init(id:content:)
timestamp: 2025-10-29T00:15:00.038Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [touchbar](/documentation/swiftui/touchbar)

**Initializer**

# init(id:content:)

**Available on:** macOS 10.15+

> Creates a customizable Touch Bar view container with a globally unique identifier.

```swift
init(id: String, @ViewBuilder content: () -> Content)
```

## Parameters

**id**

A globally unique identifier for this Touch Bar.



**content**

A collection of views to be displayed by the Touch Bar.



## Discussion

Be sure that each view in `content` has an explicit `touchBarItemPresence` value with customization identifier.

## Creating a Touch Bar view

- [init(content:)](/documentation/swiftui/touchbar/init(content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
