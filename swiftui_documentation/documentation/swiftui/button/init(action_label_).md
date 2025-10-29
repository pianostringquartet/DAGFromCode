---
title: init(action:label:)
description: Creates a button that displays a custom label.
source: https://developer.apple.com/documentation/swiftui/button/init(action:label:)
timestamp: 2025-10-29T00:10:12.480Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [button](/documentation/swiftui/button)

**Initializer**

# init(action:label:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a button that displays a custom label.

```swift
@preconcurrency init(action: @escaping @MainActor () -> Void, @ViewBuilder label: () -> Label)
```

## Parameters

**action**

The action to perform when the user triggers the button.



**label**

A view that describes the purpose of the button’s `action`.



## Creating a button

- [init(_:action:)](/documentation/swiftui/button/init(_:action:))
- [init(_:image:action:)](/documentation/swiftui/button/init(_:image:action:))
- [init(_:systemImage:action:)](/documentation/swiftui/button/init(_:systemimage:action:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
