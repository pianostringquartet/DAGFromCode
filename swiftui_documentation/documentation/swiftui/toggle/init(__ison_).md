---
title: init(_:isOn:)
description: Creates a toggle that generates its label from a localized string key.
source: https://developer.apple.com/documentation/swiftui/toggle/init(_:ison:)
timestamp: 2025-10-29T00:14:52.292Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toggle](/documentation/swiftui/toggle)

**Initializer**

# init(_:isOn:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a toggle that generates its label from a localized string key.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, isOn: Binding<Bool>)
```

## Parameters

**titleKey**

The key for the toggle’s localized title, that describes the purpose of the toggle.



**isOn**

A binding to a property that indicates whether the toggle is on or off.



## Discussion

This initializer creates a [Text](/documentation/swiftui/text) view on your behalf, and treats the localized key similar to [init(_:tableName:bundle:comment:)](/documentation/swiftui/text/init(_:tablename:bundle:comment:)). See `Text` for more information about localizing strings.

## Creating a toggle

- [init(isOn:label:)](/documentation/swiftui/toggle/init(ison:label:))
- [init(_:image:isOn:)](/documentation/swiftui/toggle/init(_:image:ison:))
- [init(_:systemImage:isOn:)](/documentation/swiftui/toggle/init(_:systemimage:ison:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
