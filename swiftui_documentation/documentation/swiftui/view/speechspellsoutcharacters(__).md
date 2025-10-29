---
title: speechSpellsOutCharacters(_:)
description: Sets whether VoiceOver should speak the contents of the text view character by character.
source: https://developer.apple.com/documentation/swiftui/view/speechspellsoutcharacters(_:)
timestamp: 2025-10-29T00:10:19.024Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# speechSpellsOutCharacters(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Sets whether VoiceOver should speak the contents of the text view character by character.

```swift
nonisolated func speechSpellsOutCharacters(_ value: Bool = true) -> some View
```

## Parameters

**value**

A Boolean value that when `true` indicates VoiceOver should speak text as individual characters. Defaults to `true`.



## Discussion

Use this modifier when you want VoiceOver to speak text as individual letters, character by character. This is important for text that is not meant to be spoken together, like:

- An acronym that isn’t a word, like APPL, spoken as “A-P-P-L”.
- A number representing a series of digits, like 25, spoken as “two-five” rather than “twenty-five”.

## Configuring VoiceOver

- [speechAdjustedPitch(_:)](/documentation/swiftui/view/speechadjustedpitch(_:))
- [speechAlwaysIncludesPunctuation(_:)](/documentation/swiftui/view/speechalwaysincludespunctuation(_:))
- [speechAnnouncementsQueued(_:)](/documentation/swiftui/view/speechannouncementsqueued(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
