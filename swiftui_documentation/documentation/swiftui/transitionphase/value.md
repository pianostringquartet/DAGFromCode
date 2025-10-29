---
title: value
description: A value that can be used to multiply effects that are applied differently depending on the phase.
source: https://developer.apple.com/documentation/swiftui/transitionphase/value
timestamp: 2025-10-29T00:12:44.695Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [transitionphase](/documentation/swiftui/transitionphase)

**Instance Property**

# value

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A value that can be used to multiply effects that are applied differently depending on the phase.

```swift
var value: Double { get }
```

## Return Value

Zero when in the `identity` case, -1.0 for `willAppear`, and 1.0 for `didDisappear`.

## Getting phase characteristics

- [isIdentity](/documentation/swiftui/transitionphase/isidentity)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
