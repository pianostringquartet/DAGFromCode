---
title: increased
description: The highest level of prominence for a badge.
source: https://developer.apple.com/documentation/swiftui/badgeprominence/increased
timestamp: 2025-10-29T00:15:11.173Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [badgeprominence](/documentation/swiftui/badgeprominence)

**Type Property**

# increased

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> The highest level of prominence for a badge.

```swift
static let increased: BadgeProminence
```

## Discussion

This level of prominence should be used for badges that display a value that requires user action, such as number of updates or account errors.

In lists on iOS and macOS, this results in badge labels being displayed on a red platter.

```swift
ForEach(accounts) { account in
    Text(account.userName)
        .badge(account.setupErrors)
        .badgeProminence(.increased)
}
```

## Getting background prominence

- [standard](/documentation/swiftui/badgeprominence/standard)
- [decreased](/documentation/swiftui/badgeprominence/decreased)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
