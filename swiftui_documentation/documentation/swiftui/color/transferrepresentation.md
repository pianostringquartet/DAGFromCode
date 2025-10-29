---
title: transferRepresentation
description: One group of colors–constant colors–created with explicitly specified component values are transferred as is.
source: https://developer.apple.com/documentation/swiftui/color/transferrepresentation
timestamp: 2025-10-29T00:11:21.986Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [color](/documentation/swiftui/color)

**Type Property**

# transferRepresentation

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> One group of colors–constant colors–created with explicitly specified component values are transferred as is.

```swift
static var transferRepresentation: some TransferRepresentation { get }
```

## Discussion

Another group of colors–standard colors, like `Color.mint`, and semantic colors, like `Color.accentColor`–are rendered on screen differently depending on the current [Environment](/documentation/swiftui/environment). For transferring, they are resolved against the default environment and might produce a slightly different result at the destination if the source of drag or copy uses a non-default environment.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
