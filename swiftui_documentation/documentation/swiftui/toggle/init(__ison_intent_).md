---
title: init(_:isOn:intent:)
description: Creates a toggle performing an  and generates its label from a localized string key.
source: https://developer.apple.com/documentation/swiftui/toggle/init(_:ison:intent:)
timestamp: 2025-10-29T00:10:06.235Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toggle](/documentation/swiftui/toggle)

**Initializer**

# init(_:isOn:intent:)

**Available on:** iOS 17.0+, iPadOS 17.0+, macOS 14.0+, tvOS 17.0+, watchOS 10.0+

> Creates a toggle performing an  and generates its label from a localized string key.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, isOn: Bool, intent: some AppIntent)
```

## Parameters

**titleKey**

The key for the toggle’s localized title, that describes the purpose of the toggle.



**isOn**

Whether the toggle is on or off.



**intent**

The `AppIntent` to be performed.



## Discussion

This initializer creates a [Text](/documentation/swiftui/text) view on your behalf, and treats the localized key similar to [init(_:tableName:bundle:comment:)](/documentation/swiftui/text/init(_:tablename:bundle:comment:)). See `Text` for more information about localizing strings.

To initialize a toggle with a string variable, use [init(_:isOn:intent:)](/documentation/swiftui/toggle/init(_:ison:intent:)) instead.

## Creating a toggle for an App Intent

- [init(isOn:intent:label:)](/documentation/swiftui/toggle/init(ison:intent:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
