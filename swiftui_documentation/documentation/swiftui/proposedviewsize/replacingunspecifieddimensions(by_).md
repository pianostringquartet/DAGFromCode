---
title: replacingUnspecifiedDimensions(by:)
description: Creates a new proposal that replaces unspecified dimensions in this proposal with the corresponding dimension of the specified size.
source: https://developer.apple.com/documentation/swiftui/proposedviewsize/replacingunspecifieddimensions(by:)
timestamp: 2025-10-29T00:09:32.959Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [proposedviewsize](/documentation/swiftui/proposedviewsize)

**Instance Method**

# replacingUnspecifiedDimensions(by:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a new proposal that replaces unspecified dimensions in this proposal with the corresponding dimension of the specified size.

```swift
func replacingUnspecifiedDimensions(by size: CGSize = CGSize(width: 10, height: 10)) -> CGSize
```

## Parameters

**size**

A set of concrete values to use for the size proposal in place of any unspecified dimensions. The default value is `10` for both dimensions.



## Return Value

A new, fully specified size proposal.

## Discussion

Use the default value to prevent a flexible view from disappearing into a zero-sized frame, and ensure the unspecified value remains visible during debugging.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
