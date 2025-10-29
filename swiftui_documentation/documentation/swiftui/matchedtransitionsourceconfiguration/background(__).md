---
title: background(_:)
description: Specifies a color that will be drawn behind the content within the matched transition source.
source: https://developer.apple.com/documentation/swiftui/matchedtransitionsourceconfiguration/background(_:)
timestamp: 2025-10-29T00:13:10.284Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [matchedtransitionsourceconfiguration](/documentation/swiftui/matchedtransitionsourceconfiguration)

**Instance Method**

# background(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Specifies a color that will be drawn behind the content within the matched transition source.

```swift
func background(_ style: Color) -> some MatchedTransitionSourceConfiguration
```

## Discussion

During a zoom transition, the background color fills the interpolated shape as it groes from the matched transition source.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
