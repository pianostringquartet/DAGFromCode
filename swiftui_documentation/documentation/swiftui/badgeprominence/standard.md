---
title: standard
description: The standard level of prominence for a badge.
source: https://developer.apple.com/documentation/swiftui/badgeprominence/standard
timestamp: 2025-10-29T00:12:52.001Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [badgeprominence](/documentation/swiftui/badgeprominence)

**Type Property**

# standard

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> The standard level of prominence for a badge.

```swift
static let standard: BadgeProminence
```

## Discussion

This level of prominence should be used for badges that display a value that suggests user action, such as a count of unread messages or new invitations.

In lists on macOS, this results in a badge label on a grayscale platter; and in lists on iOS, this prominence of badge has no platter.

```swift
List(mailboxes) { mailbox in
    Text(mailbox.name)
        .badge(mailbox.numberOfUnreadMessages)
}
.badgeProminence(.standard)
```

## Getting background prominence

- [increased](/documentation/swiftui/badgeprominence/increased)
- [decreased](/documentation/swiftui/badgeprominence/decreased)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
