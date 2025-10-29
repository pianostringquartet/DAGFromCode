---
title: init(isOn:intent:label:)
description: Creates a toggle performing an .
source: https://developer.apple.com/documentation/swiftui/toggle/init(ison:intent:label:)
timestamp: 2025-10-29T00:14:02.116Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toggle](/documentation/swiftui/toggle)

**Initializer**

# init(isOn:intent:label:)

**Available on:** iOS 17.0+, iPadOS 17.0+, macOS 14.0+, tvOS 17.0+, watchOS 10.0+

> Creates a toggle performing an .

```swift
nonisolated init<I>(isOn: Bool, intent: I, @ViewBuilder label: () -> Label) where I : AppIntent
```

## Parameters

**isOn**

Whether the toggle is on or off.



**intent**

The `AppIntent` to be performed.



**label**

A view that describes the purpose of the toggle.



## Creating a toggle for an App Intent

- [init(_:isOn:intent:)](/documentation/swiftui/toggle/init(_:ison:intent:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
