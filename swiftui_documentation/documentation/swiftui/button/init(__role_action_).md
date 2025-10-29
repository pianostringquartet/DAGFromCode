---
title: init(_:role:action:)
description: Creates a button with a specified role that generates its label from a localized string key.
source: https://developer.apple.com/documentation/swiftui/button/init(_:role:action:)
timestamp: 2025-10-29T00:13:34.304Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [button](/documentation/swiftui/button)

**Initializer**

# init(_:role:action:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Creates a button with a specified role that generates its label from a localized string key.

```swift
@preconcurrency nonisolated init(_ titleKey: LocalizedStringKey, role: ButtonRole?, action: @escaping @MainActor () -> Void)
```

## Parameters

**titleKey**

The key for the button’s localized title, that describes the purpose of the button’s `action`.



**role**

An optional semantic role describing the button. A value of `nil` means that the button doesn’t have an assigned role.



**action**

The action to perform when the user triggers the button.



## Discussion

This initializer creates a [Text](/documentation/swiftui/text) view on your behalf, and treats the localized key similar to [init(_:tableName:bundle:comment:)](/documentation/swiftui/text/init(_:tablename:bundle:comment:)). See [Text](/documentation/swiftui/text) for more information about localizing strings.

## Creating a button with a role

- [init(role:action:label:)](/documentation/swiftui/button/init(role:action:label:))
- [init(_:image:role:action:)](/documentation/swiftui/button/init(_:image:role:action:))
- [init(_:systemImage:role:action:)](/documentation/swiftui/button/init(_:systemimage:role:action:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
