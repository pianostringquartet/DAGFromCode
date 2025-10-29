---
title: speechAlwaysIncludesPunctuation(_:)
description: Sets whether VoiceOver should always speak all punctuation in the text view.
source: https://developer.apple.com/documentation/swiftui/text/speechalwaysincludespunctuation(_:)
timestamp: 2025-10-29T00:13:01.113Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text)

**Instance Method**

# speechAlwaysIncludesPunctuation(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Sets whether VoiceOver should always speak all punctuation in the text view.

```swift
func speechAlwaysIncludesPunctuation(_ value: Bool = true) -> Text
```

## Parameters

**value**

A Boolean value that you set to `true` if VoiceOver should speak all punctuation in the text. Defaults to `true`.



## Discussion

Use this modifier to control whether the system speaks punctuation characters in the text. You might use this for code or other text where the punctuation is relevant, or where you want VoiceOver to speak a verbatim transcription of the text you provide. For example, given the text:

```swift
Text("All the world's a stage, " +
     "And all the men and women merely players;")
     .speechAlwaysIncludesPunctuation()
```

VoiceOver would speak “All the world apostrophe s a stage comma and all the men and women merely players semicolon”.

By default, VoiceOver voices punctuation based on surrounding context.

## Configuring voiceover

- [speechAdjustedPitch(_:)](/documentation/swiftui/text/speechadjustedpitch(_:))
- [speechAnnouncementsQueued(_:)](/documentation/swiftui/text/speechannouncementsqueued(_:))
- [speechSpellsOutCharacters(_:)](/documentation/swiftui/text/speechspellsoutcharacters(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
