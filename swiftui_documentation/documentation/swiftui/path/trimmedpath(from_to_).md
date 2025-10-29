---
title: trimmedPath(from:to:)
description: Returns a partial copy of the path.
source: https://developer.apple.com/documentation/swiftui/path/trimmedpath(from:to:)
timestamp: 2025-10-29T00:14:25.924Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [path](/documentation/swiftui/path)

**Instance Method**

# trimmedPath(from:to:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Returns a partial copy of the path.

```swift
func trimmedPath(from: CGFloat, to: CGFloat) -> Path
```

## Discussion

The returned path contains the region between `from` and `to`, both of which must be fractions between zero and one defining points linearly-interpolated along the path.

## Transforming the path

- [applying(_:)](/documentation/swiftui/path/applying(_:))
- [offsetBy(dx:dy:)](/documentation/swiftui/path/offsetby(dx:dy:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
