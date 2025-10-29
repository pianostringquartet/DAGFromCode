---
title: amount
description: The current amount of immersion.
source: https://developer.apple.com/documentation/swiftui/immersionchangecontext/amount
timestamp: 2025-10-29T00:09:12.807Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [immersionchangecontext](/documentation/swiftui/immersionchangecontext)

**Instance Property**

# amount

**Available on:** macOS 26.0+, visionOS 2.0+

> The current amount of immersion.

```swift
let amount: Double?
```

## Discussion

Your app can display virtual content using [Immersive Space](/documentation/swiftui/immersivespace) and the different immersion styles to create immersive experiences. Depending on the immersion style, none of it, parts of it, or a all of video pass-through are occluded by your app while having an Immersive Space opened, and the amount of it is represented by this value.

Some immersion styles allow changing the amount interactively by turning the Digital Crown.

This value is `nil`, if your app currently does not provide any immersive experience at all.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
