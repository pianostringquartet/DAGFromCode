---
title: init(role:intent:label:)
description: Creates a button with a specified role that performs an .
source: https://developer.apple.com/documentation/swiftui/button/init(role:intent:label:)
timestamp: 2025-10-29T00:15:27.849Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [button](/documentation/swiftui/button)

**Initializer**

# init(role:intent:label:)

**Available on:** iOS 17.0+, iPadOS 17.0+, macOS 14.0+, tvOS 17.0+, watchOS 10.0+

> Creates a button with a specified role that performs an .

```swift
nonisolated init(role: ButtonRole?, intent: some AppIntent, @ViewBuilder label: () -> Label)
```

## Parameters

**role**

An optional semantic role describing the button. A value of `nil` means that the button doesn’t have an assigned role.



**intent**

The `AppIntent` to execute.



**label**

A view that describes the purpose of the button’s `action`.



## Creating a button to perform an App Intent

- [init(_:intent:)](/documentation/swiftui/button/init(_:intent:))
- [init(intent:label:)](/documentation/swiftui/button/init(intent:label:))
- [init(_:role:intent:)](/documentation/swiftui/button/init(_:role:intent:))
- [init(_:image:role:intent:)](/documentation/swiftui/button/init(_:image:role:intent:))
- [init(_:systemImage:role:intent:)](/documentation/swiftui/button/init(_:systemimage:role:intent:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
