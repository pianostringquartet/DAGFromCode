---
title: init(_:action:)
description: Creates a button that generates its label from a localized string key.
source: https://developer.apple.com/documentation/swiftui/button/init(_:action:)
timestamp: 2025-10-29T00:10:25.619Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [button](/documentation/swiftui/button)

**Initializer**

# init(_:action:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a button that generates its label from a localized string key.

```swift
@preconcurrency nonisolated init(_ titleKey: LocalizedStringKey, action: @escaping @MainActor () -> Void)
```

## Parameters

**titleKey**

The key for the button’s localized title, that describes the purpose of the button’s `action`.



**action**

The action to perform when the user triggers the button.



## Discussion

This initializer creates a [Text](/documentation/swiftui/text) view on your behalf, and treats the localized key similar to [init(_:tableName:bundle:comment:)](/documentation/swiftui/text/init(_:tablename:bundle:comment:)). See [Text](/documentation/swiftui/text) for more information about localizing strings.

## Creating a button

- [init(action:label:)](/documentation/swiftui/button/init(action:label:))
- [init(_:image:action:)](/documentation/swiftui/button/init(_:image:action:))
- [init(_:systemImage:action:)](/documentation/swiftui/button/init(_:systemimage:action:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
