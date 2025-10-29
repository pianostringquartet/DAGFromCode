---
title: initialImmersionAmount
description: The initial amount of immersion used for this instance of the style.
source: https://developer.apple.com/documentation/swiftui/progressiveimmersionstyle/initialimmersionamount
timestamp: 2025-10-29T00:10:55.604Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [progressiveimmersionstyle](/documentation/swiftui/progressiveimmersionstyle)

**Instance Property**

# initialImmersionAmount

**Available on:** macOS 26.0+, visionOS 2.0+

> The initial amount of immersion used for this instance of the style.

```swift
let initialImmersionAmount: Double?
```

## Discussion

The value represents how much of the spherical field of view of the user is covered by the portal effect of the style initially. The value can range from `0.0` to `1.0`, and is capped by the minimum and maximum amount of immersion of this instance. If this value is not set, a system default value will be used instead.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
