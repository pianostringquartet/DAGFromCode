---
title: init(isOn:label:)
description: Creates a toggle that displays a custom label.
source: https://developer.apple.com/documentation/swiftui/toggle/init(ison:label:)
timestamp: 2025-10-29T00:14:54.349Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toggle](/documentation/swiftui/toggle)

**Initializer**

# init(isOn:label:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a toggle that displays a custom label.

```swift
init(isOn: Binding<Bool>, @ViewBuilder label: () -> Label)
```

## Parameters

**isOn**

A binding to a property that determines whether the toggle is on or off.



**label**

A view that describes the purpose of the toggle.



## Creating a toggle

- [init(_:isOn:)](/documentation/swiftui/toggle/init(_:ison:))
- [init(_:image:isOn:)](/documentation/swiftui/toggle/init(_:image:ison:))
- [init(_:systemImage:isOn:)](/documentation/swiftui/toggle/init(_:systemimage:ison:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
