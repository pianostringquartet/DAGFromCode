---
title: speechAnnouncementsQueued(_:)
description: Controls whether to queue pending announcements behind existing speech rather than interrupting speech in progress.
source: https://developer.apple.com/documentation/swiftui/text/speechannouncementsqueued(_:)
timestamp: 2025-10-29T00:09:17.443Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text)

**Instance Method**

# speechAnnouncementsQueued(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Controls whether to queue pending announcements behind existing speech rather than interrupting speech in progress.

```swift
func speechAnnouncementsQueued(_ value: Bool = true) -> Text
```

## Parameters

**value**

A Boolean value that determines if VoiceOver speaks changes to text immediately or enqueues them behind existing speech. Defaults to `true`.



## Discussion

Use this modifier when you want affect the order in which the accessibility system delivers spoken text. Announcements can occur automatically when the label or value of an accessibility element changes.

## Configuring voiceover

- [speechAdjustedPitch(_:)](/documentation/swiftui/text/speechadjustedpitch(_:))
- [speechAlwaysIncludesPunctuation(_:)](/documentation/swiftui/text/speechalwaysincludespunctuation(_:))
- [speechSpellsOutCharacters(_:)](/documentation/swiftui/text/speechspellsoutcharacters(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
