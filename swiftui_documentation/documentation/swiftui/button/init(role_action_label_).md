---
title: init(role:action:label:)
description: Creates a button with a specified role that displays a custom label.
source: https://developer.apple.com/documentation/swiftui/button/init(role:action:label:)
timestamp: 2025-10-29T00:10:44.843Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [button](/documentation/swiftui/button)

**Initializer**

# init(role:action:label:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Creates a button with a specified role that displays a custom label.

```swift
@preconcurrency nonisolated init(role: ButtonRole?, action: @escaping @MainActor () -> Void, @ViewBuilder label: () -> Label)
```

## Parameters

**role**

An optional semantic role that describes the button. A value of `nil` means that the button doesn’t have an assigned role.



**action**

The action to perform when the user interacts with the button.



**label**

A view that describes the purpose of the button’s `action`.



## Creating a button with a role

- [init(_:role:action:)](/documentation/swiftui/button/init(_:role:action:))
- [init(_:image:role:action:)](/documentation/swiftui/button/init(_:image:role:action:))
- [init(_:systemImage:role:action:)](/documentation/swiftui/button/init(_:systemimage:role:action:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
