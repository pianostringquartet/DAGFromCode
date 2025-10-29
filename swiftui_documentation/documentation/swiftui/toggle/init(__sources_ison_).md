---
title: init(_:sources:isOn:)
description: Creates a toggle representing a collection of values that generates its label from a localized string key.
source: https://developer.apple.com/documentation/swiftui/toggle/init(_:sources:ison:)
timestamp: 2025-10-29T00:12:28.639Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toggle](/documentation/swiftui/toggle)

**Initializer**

# init(_:sources:isOn:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a toggle representing a collection of values that generates its label from a localized string key.

```swift
nonisolated init<C>(_ titleKey: LocalizedStringKey, sources: C, isOn: KeyPath<C.Element, Binding<Bool>>) where C : RandomAccessCollection
```

## Parameters

**titleKey**

The key for the toggle’s localized title, that describes the purpose of the toggle.



**sources**

A collection of values used as the source for rendering the Toggle’s state.



**isOn**

The key path of the values that determines whether the toggle is on, mixed or off.



## Discussion

This initializer creates a [Text](/documentation/swiftui/text) view on your behalf, and treats the localized key similar to [init(_:tableName:bundle:comment:)](/documentation/swiftui/text/init(_:tablename:bundle:comment:)). See `Text` for more information about localizing strings.

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

Toggle("Enable all alarms", sources: $alarms, isOn: \.isOn)
```

## Creating a toggle for a collection

- [init(sources:isOn:label:)](/documentation/swiftui/toggle/init(sources:ison:label:))
- [init(_:image:sources:isOn:)](/documentation/swiftui/toggle/init(_:image:sources:ison:))
- [init(_:systemImage:sources:isOn:)](/documentation/swiftui/toggle/init(_:systemimage:sources:ison:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
