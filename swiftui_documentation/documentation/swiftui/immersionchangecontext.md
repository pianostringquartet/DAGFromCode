---
title: ImmersionChangeContext
description: A structure that represents a state of immersion of your app.
source: https://developer.apple.com/documentation/swiftui/immersionchangecontext
timestamp: 2025-10-29T00:11:08.404Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ImmersionChangeContext

**Available on:** macOS 26.0+, visionOS 2.0+

> A structure that represents a state of immersion of your app.

```swift
struct ImmersionChangeContext
```

## Overview

You don’t use this structure directly. Instead, SwiftUI provides instances of this structure via the `onImmersionChange` modifier’s closure.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Instance Properties

- [amount](/documentation/swiftui/immersionchangecontext/amount) The current amount of immersion.

## Responding to immersion changes

- [onImmersionChange(initial:_:)](/documentation/swiftui/view/onimmersionchange(initial:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
