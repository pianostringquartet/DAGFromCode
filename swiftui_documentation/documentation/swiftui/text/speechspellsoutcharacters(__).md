---
title: speechSpellsOutCharacters(_:)
description: Sets whether VoiceOver should speak the contents of the text view character by character.
source: https://developer.apple.com/documentation/swiftui/text/speechspellsoutcharacters(_:)
timestamp: 2025-10-29T00:10:23.467Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text)

**Instance Method**

# speechSpellsOutCharacters(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Sets whether VoiceOver should speak the contents of the text view character by character.

```swift
func speechSpellsOutCharacters(_ value: Bool = true) -> Text
```

## Parameters

**value**

A Boolean value that when `true` indicates VoiceOver should speak text as individual characters. Defaults to `true`.



## Discussion

Use this modifier when you want VoiceOver to speak text as individual letters, character by character. This is important for text that is not meant to be spoken together, like:

- An acronym that isn’t a word, like APPL, spoken as “A-P-P-L”.
- A number representing a series of digits, like 25, spoken as “two-five” rather than “twenty-five”.

## Configuring voiceover

- [speechAdjustedPitch(_:)](/documentation/swiftui/text/speechadjustedpitch(_:))
- [speechAlwaysIncludesPunctuation(_:)](/documentation/swiftui/text/speechalwaysincludespunctuation(_:))
- [speechAnnouncementsQueued(_:)](/documentation/swiftui/text/speechannouncementsqueued(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
