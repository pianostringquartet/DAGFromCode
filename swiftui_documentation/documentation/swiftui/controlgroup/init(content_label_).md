---
title: init(content:label:)
description: Creates a new control group with the specified content and a label.
source: https://developer.apple.com/documentation/swiftui/controlgroup/init(content:label:)
timestamp: 2025-10-29T00:14:47.056Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [controlgroup](/documentation/swiftui/controlgroup)

**Initializer**

# init(content:label:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 17.0+, visionOS 1.0+

> Creates a new control group with the specified content and a label.

```swift
nonisolated init<C, L>(@ViewBuilder content: () -> C, @ViewBuilder label: () -> L) where Content == LabeledControlGroupContent<C, L>, C : View, L : View
```

## Parameters

**content**

The content to display.



**label**

A view that describes the purpose of the group.



## Creating a control group

- [init(content:)](/documentation/swiftui/controlgroup/init(content:))
- [init(_:content:)](/documentation/swiftui/controlgroup/init(_:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
