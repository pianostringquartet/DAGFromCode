---
title: automatic
description: The default presentation sizing, appropriate for the platform.
source: https://developer.apple.com/documentation/swiftui/presentationsizing/automatic
timestamp: 2025-10-29T00:13:33.749Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [presentationsizing](/documentation/swiftui/presentationsizing)

**Type Property**

# automatic

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> The default presentation sizing, appropriate for the platform.

```swift
static var automatic: AutomaticPresentationSizing { get }
```

## Discussion

On macOS, `.automatic` resolves to `.form.fitted(horizontal: false, vertical: true)`. On all other platforms, including Mac Catalyst, it resolves to `.form`.

> [!NOTE]
> [Automatic Presentation Sizing](/documentation/swiftui/automaticpresentationsizing)

## Getting built-in presentation size

- [fitted](/documentation/swiftui/presentationsizing/fitted)
- [form](/documentation/swiftui/presentationsizing/form)
- [page](/documentation/swiftui/presentationsizing/page)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
