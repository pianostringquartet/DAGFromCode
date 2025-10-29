---
title: shadow(color:radius:x:y:)
description: Applies the specified shadow effect to the matched transition source.
source: https://developer.apple.com/documentation/swiftui/matchedtransitionsourceconfiguration/shadow(color:radius:x:y:)
timestamp: 2025-10-29T00:09:58.096Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [matchedtransitionsourceconfiguration](/documentation/swiftui/matchedtransitionsourceconfiguration)

**Instance Method**

# shadow(color:radius:x:y:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Applies the specified shadow effect to the matched transition source.

```swift
func shadow(color: Color = Color(.sRGBLinear, white: 0, opacity: 0.33), radius: CGFloat, x: CGFloat = 0, y: CGFloat = 0) -> some MatchedTransitionSourceConfiguration
```

## Parameters

**color**

The shadow’s color.



**radius**

A measure of how much to blur the shadow. Larger values result in more blur.



**x**

An amount to offset the shadow horizontally from the view.



**y**

An amount to offset the shadow vertically from the view.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
