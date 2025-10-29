---
title: default
description: The effective SwiftUI font used in any given environment.
source: https://developer.apple.com/documentation/swiftui/font/default
timestamp: 2025-10-29T00:11:21.856Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [font](/documentation/swiftui/font)

**Type Property**

# default

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> The effective SwiftUI font used in any given environment.

```swift
static var `default`: Font { get }
```

## Discussion

The font specified by environment, preferring first any developer spedified font, via [font](/documentation/swiftui/environmentvalues/font), then any framework specified font, and finally the default SwiftUI font.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
