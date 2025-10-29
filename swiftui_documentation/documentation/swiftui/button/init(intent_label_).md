---
title: init(intent:label:)
description: Creates a button that performs an .
source: https://developer.apple.com/documentation/swiftui/button/init(intent:label:)
timestamp: 2025-10-29T00:13:26.719Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [button](/documentation/swiftui/button)

**Initializer**

# init(intent:label:)

**Available on:** iOS 17.0+, iPadOS 17.0+, macOS 14.0+, tvOS 17.0+, watchOS 10.0+

> Creates a button that performs an .

```swift
nonisolated init<I>(intent: I, @ViewBuilder label: () -> Label) where I : AppIntent
```

## Parameters

**intent**

The `AppIntent` to execute.



**label**

A view that describes the purpose of the button’s `action`.



## Creating a button to perform an App Intent

- [init(_:intent:)](/documentation/swiftui/button/init(_:intent:))
- [init(_:role:intent:)](/documentation/swiftui/button/init(_:role:intent:))
- [init(role:intent:label:)](/documentation/swiftui/button/init(role:intent:label:))
- [init(_:image:role:intent:)](/documentation/swiftui/button/init(_:image:role:intent:))
- [init(_:systemImage:role:intent:)](/documentation/swiftui/button/init(_:systemimage:role:intent:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
