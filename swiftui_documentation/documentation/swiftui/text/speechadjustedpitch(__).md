---
title: speechAdjustedPitch(_:)
description: Raises or lowers the pitch of spoken text.
source: https://developer.apple.com/documentation/swiftui/text/speechadjustedpitch(_:)
timestamp: 2025-10-29T00:11:38.354Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text)

**Instance Method**

# speechAdjustedPitch(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Raises or lowers the pitch of spoken text.

```swift
func speechAdjustedPitch(_ value: Double) -> Text
```

## Parameters

**value**

The amount to raise or lower the pitch. Values between `-1` and `0` result in a lower pitch while values between `0` and `1` result in a higher pitch. The method clamps values to the range `-1` to `1`.



## Discussion

Use this modifier when you want to change the pitch of spoken text. The value indicates how much higher or lower to change the pitch.

## Configuring voiceover

- [speechAlwaysIncludesPunctuation(_:)](/documentation/swiftui/text/speechalwaysincludespunctuation(_:))
- [speechAnnouncementsQueued(_:)](/documentation/swiftui/text/speechannouncementsqueued(_:))
- [speechSpellsOutCharacters(_:)](/documentation/swiftui/text/speechspellsoutcharacters(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
