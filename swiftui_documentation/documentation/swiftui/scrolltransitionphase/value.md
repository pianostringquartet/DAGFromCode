---
title: value
description: A phase-derived value that can be used to scale or otherwise modify effects.
source: https://developer.apple.com/documentation/swiftui/scrolltransitionphase/value
timestamp: 2025-10-29T00:14:37.400Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scrolltransitionphase](/documentation/swiftui/scrolltransitionphase)

**Instance Property**

# value

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A phase-derived value that can be used to scale or otherwise modify effects.

```swift
var value: Double { get }
```

## Discussion

Returns -1.0 when in the topLeading phase, zero when in the identity phase, and 1.0 when in the bottomTrailing phase.

## Accessing the phase state

- [isIdentity](/documentation/swiftui/scrolltransitionphase/isidentity)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
