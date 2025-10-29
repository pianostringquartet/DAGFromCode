---
title: init(_:role:intent:)
description: Creates a button with a specified role that performs an  and generates its label from a string.
source: https://developer.apple.com/documentation/swiftui/button/init(_:role:intent:)
timestamp: 2025-10-29T00:09:58.887Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [button](/documentation/swiftui/button)

**Initializer**

# init(_:role:intent:)

**Available on:** iOS 17.0+, iPadOS 17.0+, macOS 14.0+, tvOS 17.0+, watchOS 10.0+

> Creates a button with a specified role that performs an  and generates its label from a string.

```swift
nonisolated init(_ title: some StringProtocol, role: ButtonRole?, intent: some AppIntent)
```

## Parameters

**title**

A string that describes the purpose of the button’s `intent`.



**role**

An optional semantic role describing the button. A value of `nil` means that the button doesn’t have an assigned role.



**intent**

The `AppIntent` to execute.



## Discussion

This initializer creates a [Text](/documentation/swiftui/text) view on your behalf, and treats the title similar to [init(_:)](/documentation/swiftui/text/init(_:)-9d1g4). See [Text](/documentation/swiftui/text) for more information about localizing strings.

## Creating a button to perform an App Intent

- [init(_:intent:)](/documentation/swiftui/button/init(_:intent:))
- [init(intent:label:)](/documentation/swiftui/button/init(intent:label:))
- [init(role:intent:label:)](/documentation/swiftui/button/init(role:intent:label:))
- [init(_:image:role:intent:)](/documentation/swiftui/button/init(_:image:role:intent:))
- [init(_:systemImage:role:intent:)](/documentation/swiftui/button/init(_:systemimage:role:intent:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
