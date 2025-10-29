---
title: intrinsicContentSize
description: The hosting controller’s view automatically invalidate its intrinsic content size when its ideal size changes.
source: https://developer.apple.com/documentation/swiftui/uihostingcontrollersizingoptions/intrinsiccontentsize
timestamp: 2025-10-29T00:14:51.066Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uihostingcontrollersizingoptions](/documentation/swiftui/uihostingcontrollersizingoptions)

**Type Property**

# intrinsicContentSize

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, tvOS 16.0+, visionOS 1.0+

> The hosting controller’s view automatically invalidate its intrinsic content size when its ideal size changes.

```swift
static let intrinsicContentSize: UIHostingControllerSizingOptions
```

## Discussion

Use this option when the hosting controller’s view is being laid out with Auto Layout.

> [!NOTE]
> This option comes with a performance cost because it asks for the ideal size of the content using the [unspecified](/documentation/swiftui/proposedviewsize/unspecified) size proposal.

## Getting sizing options

- [preferredContentSize](/documentation/swiftui/uihostingcontrollersizingoptions/preferredcontentsize)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
