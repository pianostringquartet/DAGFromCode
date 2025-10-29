---
title: height(in:)
description: Calculates and returns a height based on the context.
source: https://developer.apple.com/documentation/swiftui/custompresentationdetent/height(in:)
timestamp: 2025-10-29T00:14:24.368Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [custompresentationdetent](/documentation/swiftui/custompresentationdetent)

**Type Method**

# height(in:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Calculates and returns a height based on the context.

```swift
static func height(in context: Self.Context) -> CGFloat?
```

## Parameters

**context**

Information that can help to determine the height of the detent.



## Return Value

The height of the detent, or `nil` if the detent should be inactive based on the `contenxt` input.

## Getting the height

- [CustomPresentationDetent.Context](/documentation/swiftui/custompresentationdetent/context)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
