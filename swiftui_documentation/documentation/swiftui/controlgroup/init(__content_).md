---
title: init(_:content:)
description: Creates a new control group with the specified content that generates its label from a string.
source: https://developer.apple.com/documentation/swiftui/controlgroup/init(_:content:)
timestamp: 2025-10-29T00:13:12.231Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [controlgroup](/documentation/swiftui/controlgroup)

**Initializer**

# init(_:content:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 17.0+, visionOS 1.0+

> Creates a new control group with the specified content that generates its label from a string.

```swift
nonisolated init<C, S>(_ title: S, @ViewBuilder content: () -> C) where Content == LabeledControlGroupContent<C, Text>, C : View, S : StringProtocol
```

## Parameters

**title**

A string that describes the contents of the group.



## Creating a control group

- [init(content:)](/documentation/swiftui/controlgroup/init(content:))
- [init(content:label:)](/documentation/swiftui/controlgroup/init(content:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
