---
title: init(_:intent:)
description: Creates a button that performs an  and generates its label from a localized string key.
source: https://developer.apple.com/documentation/swiftui/button/init(_:intent:)
timestamp: 2025-10-29T00:09:53.754Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [button](/documentation/swiftui/button)

**Initializer**

# init(_:intent:)

**Available on:** iOS 17.0+, iPadOS 17.0+, macOS 14.0+, tvOS 17.0+, watchOS 10.0+

> Creates a button that performs an  and generates its label from a localized string key.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, intent: some AppIntent)
```

## Parameters

**titleKey**

The key for the button’s localized title, that describes the purpose of the button’s `intent`.



**intent**

The `AppIntent` to execute.



## Discussion

This initializer creates a [Text](/documentation/swiftui/text) view on your behalf, and treats the localized key similar to [init(_:tableName:bundle:comment:)](/documentation/swiftui/text/init(_:tablename:bundle:comment:)). See [Text](/documentation/swiftui/text) for more information about localizing strings.

To initialize a button with a string variable, use [init(_:intent:)](/documentation/swiftui/button/init(_:intent:)) instead.

## Creating a button to perform an App Intent

- [init(intent:label:)](/documentation/swiftui/button/init(intent:label:))
- [init(_:role:intent:)](/documentation/swiftui/button/init(_:role:intent:))
- [init(role:intent:label:)](/documentation/swiftui/button/init(role:intent:label:))
- [init(_:image:role:intent:)](/documentation/swiftui/button/init(_:image:role:intent:))
- [init(_:systemImage:role:intent:)](/documentation/swiftui/button/init(_:systemimage:role:intent:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
