---
title: preferredContentSize
description: The hosting controller creates and updates constraints that represent its content’s ideal size. These constraints in turn influence the hosting controller’s .
source: https://developer.apple.com/documentation/swiftui/nshostingsizingoptions/preferredcontentsize
timestamp: 2025-10-29T00:15:22.162Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nshostingsizingoptions](/documentation/swiftui/nshostingsizingoptions)

**Type Property**

# preferredContentSize

**Available on:** macOS 13.0+

> The hosting controller creates and updates constraints that represent its content’s ideal size. These constraints in turn influence the hosting controller’s .

```swift
static let preferredContentSize: NSHostingSizingOptions
```

## Discussion

The constraints reflect the size that fits a proposal of `.unspecified`.

> [!NOTE]
> This option has no effect when used with an `NSHostingView` directly.

## Geting sizing options

- [intrinsicContentSize](/documentation/swiftui/nshostingsizingoptions/intrinsiccontentsize)
- [maxSize](/documentation/swiftui/nshostingsizingoptions/maxsize)
- [minSize](/documentation/swiftui/nshostingsizingoptions/minsize)
- [standardBounds](/documentation/swiftui/nshostingsizingoptions/standardbounds)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
