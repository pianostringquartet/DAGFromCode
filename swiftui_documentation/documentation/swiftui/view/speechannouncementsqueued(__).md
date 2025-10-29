---
title: speechAnnouncementsQueued(_:)
description: Controls whether to queue pending announcements behind existing speech rather than interrupting speech in progress.
source: https://developer.apple.com/documentation/swiftui/view/speechannouncementsqueued(_:)
timestamp: 2025-10-29T00:10:15.140Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# speechAnnouncementsQueued(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Controls whether to queue pending announcements behind existing speech rather than interrupting speech in progress.

```swift
nonisolated func speechAnnouncementsQueued(_ value: Bool = true) -> some View
```

## Parameters

**value**

A Boolean value that determines if VoiceOver speaks changes to text immediately or enqueues them behind existing speech. Defaults to `true`.



## Discussion

Use this modifier when you want affect the order in which the accessibility system delivers spoken text. Announcements can occur automatically when the label or value of an accessibility element changes.

## Configuring VoiceOver

- [speechAdjustedPitch(_:)](/documentation/swiftui/view/speechadjustedpitch(_:))
- [speechAlwaysIncludesPunctuation(_:)](/documentation/swiftui/view/speechalwaysincludespunctuation(_:))
- [speechSpellsOutCharacters(_:)](/documentation/swiftui/view/speechspellsoutcharacters(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
