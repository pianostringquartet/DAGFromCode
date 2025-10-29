---
title: init(_:)
description: Creates an  using a WatchKit Application Delegate.
source: https://developer.apple.com/documentation/swiftui/wkapplicationdelegateadaptor/init(_:)
timestamp: 2025-10-29T00:09:49.974Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [wkapplicationdelegateadaptor](/documentation/swiftui/wkapplicationdelegateadaptor)

**Initializer**

# init(_:)

**Available on:** watchOS 10.0+

> Creates an  using a WatchKit Application Delegate.

```swift
@MainActor @preconcurrency init(_ delegateType: DelegateType.Type = DelegateType.self)
```

## Discussion

The framework will initialize the provided delegate and manage its lifetime, calling out to it when appropriate after performing its own work.

> [!NOTE]
> The instantiated delegate will be placed in the Environment and may be accessed by using the `@Environment` property wrapper in the view hierarchy.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
