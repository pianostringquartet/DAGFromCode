---
title: KeyPress.Result
description: A result value returned from a key-press action that indicates whether the action consumed the event.
source: https://developer.apple.com/documentation/swiftui/keypress/result
timestamp: 2025-10-29T00:12:35.775Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [keypress](/documentation/swiftui/keypress)

**Enumeration**

# KeyPress.Result

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+

> A result value returned from a key-press action that indicates whether the action consumed the event.

```swift
enum Result
```

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting the result

- [KeyPress.Result.handled](/documentation/swiftui/keypress/result/handled) The action consumed the event, preventing dispatch from continuing.
- [KeyPress.Result.ignored](/documentation/swiftui/keypress/result/ignored) The action ignored the event, allowing dispatch to continue.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
