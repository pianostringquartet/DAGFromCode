---
title: preferredContentSize
description: The hosting controller tracks its content’s ideal size in its preferred content size.
source: https://developer.apple.com/documentation/swiftui/uihostingcontrollersizingoptions/preferredcontentsize
timestamp: 2025-10-29T00:14:52.002Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [uihostingcontrollersizingoptions](/documentation/swiftui/uihostingcontrollersizingoptions)

**Type Property**

# preferredContentSize

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, tvOS 16.0+, visionOS 1.0+

> The hosting controller tracks its content’s ideal size in its preferred content size.

```swift
static let preferredContentSize: UIHostingControllerSizingOptions
```

## Discussion

Use this option when using a hosting controller with a container view controller that requires up-to-date knowledge of the hosting controller’s ideal size.

> [!NOTE]
> This option comes with a performance cost because it asks for the ideal size of the content using the [unspecified](/documentation/swiftui/proposedviewsize/unspecified) size proposal.

## Getting sizing options

- [intrinsicContentSize](/documentation/swiftui/uihostingcontrollersizingoptions/intrinsiccontentsize)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
