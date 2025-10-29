---
title: decreased
description: The lowest level of prominence for a badge.
source: https://developer.apple.com/documentation/swiftui/badgeprominence/decreased
timestamp: 2025-10-29T00:12:23.611Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [badgeprominence](/documentation/swiftui/badgeprominence)

**Type Property**

# decreased

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> The lowest level of prominence for a badge.

```swift
static let decreased: BadgeProminence
```

## Discussion

This level or prominence should be used for badges that display a value of passive information that requires no user action, such as total number of messages or content.

In lists on iOS and macOS, this results in badge labels being displayed without any extra decoration. On iOS, this looks the same as `.standard`.

```swift
List(folders) { folder in
    Text(folder.name)
        .badge(folder.numberOfItems)
}
.badgeProminence(.decreased)
```

## Getting background prominence

- [standard](/documentation/swiftui/badgeprominence/standard)
- [increased](/documentation/swiftui/badgeprominence/increased)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
