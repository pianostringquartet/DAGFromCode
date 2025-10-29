---
title: init(_:image:role:intent:)
description: Creates a button with a specified role that generates its label from a string and an image resource.
source: https://developer.apple.com/documentation/swiftui/button/init(_:image:role:intent:)
timestamp: 2025-10-29T00:13:05.507Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [button](/documentation/swiftui/button)

**Initializer**

# init(_:image:role:intent:)

**Available on:** iOS 17.0+, iPadOS 17.0+, macOS 14.0+, tvOS 17.0+, watchOS 10.0+

> Creates a button with a specified role that generates its label from a string and an image resource.

```swift
nonisolated init(_ title: some StringProtocol, image: ImageResource, role: ButtonRole? = nil, intent: some AppIntent)
```

## Parameters

**title**

A string that describes the purpose of the button’s `intent`.



**image**

The image resource to lookup.



**role**

An optional semantic role describing the button. A value of `nil` means that the button doesn’t have an assigned role.



**intent**

The `AppIntent` to execute.



## Discussion

This initializer creates a [Label](/documentation/swiftui/label) view on your behalf, and treats the title similar to [init(_:)](/documentation/swiftui/text/init(_:)-9d1g4). See [Text](/documentation/swiftui/text) for more information about localizing strings.

## Creating a button to perform an App Intent

- [init(_:intent:)](/documentation/swiftui/button/init(_:intent:))
- [init(intent:label:)](/documentation/swiftui/button/init(intent:label:))
- [init(_:role:intent:)](/documentation/swiftui/button/init(_:role:intent:))
- [init(role:intent:label:)](/documentation/swiftui/button/init(role:intent:label:))
- [init(_:systemImage:role:intent:)](/documentation/swiftui/button/init(_:systemimage:role:intent:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
