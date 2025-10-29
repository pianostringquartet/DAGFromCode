---
title: init(sources:isOn:label:)
description: Creates a toggle representing a collection of values with a custom label.
source: https://developer.apple.com/documentation/swiftui/toggle/init(sources:ison:label:)
timestamp: 2025-10-29T00:15:26.760Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toggle](/documentation/swiftui/toggle)

**Initializer**

# init(sources:isOn:label:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a toggle representing a collection of values with a custom label.

```swift
init<C>(sources: C, isOn: KeyPath<C.Element, Binding<Bool>>, @ViewBuilder label: () -> Label) where C : RandomAccessCollection
```

## Parameters

**sources**

A collection of values used as the source for rendering the Toggle’s state.



**isOn**

The key path of the values that determines whether the toggle is on, mixed or off.



**label**

A view that describes the purpose of the toggle.



## Discussion

The following example creates a single toggle that represents the state of multiple alarms:

```swift
struct Alarm: Hashable, Identifiable {
    var id = UUID()
    var isOn = false
    var name = ""
}

@State private var alarms = [
    Alarm(isOn: true, name: "Morning"),
    Alarm(isOn: false, name: "Evening")
]

Toggle(sources: $alarms, isOn: \.isOn) {
    Text("Enable all alarms")
}
```

## Creating a toggle for a collection

- [init(_:sources:isOn:)](/documentation/swiftui/toggle/init(_:sources:ison:))
- [init(_:image:sources:isOn:)](/documentation/swiftui/toggle/init(_:image:sources:ison:))
- [init(_:systemImage:sources:isOn:)](/documentation/swiftui/toggle/init(_:systemimage:sources:ison:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
