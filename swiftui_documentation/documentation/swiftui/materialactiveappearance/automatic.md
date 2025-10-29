---
title: automatic
description: Materials will automatically appear active or inactive based on context and platform convention.
source: https://developer.apple.com/documentation/swiftui/materialactiveappearance/automatic
timestamp: 2025-10-29T00:09:47.912Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [materialactiveappearance](/documentation/swiftui/materialactiveappearance)

**Type Property**

# automatic

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Materials will automatically appear active or inactive based on context and platform convention.

```swift
static let automatic: MaterialActiveAppearance
```

## Discussion

Examples of automatic behavior on macOS:

- Materials used as a `window` container background will appear inactive when the containing window is inactive.
- `Material.bar` materials will appear inactive when the containing window is inactive.
- All other materials will appear as active.

Materials always appear as active on all other platforms.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
