---
title: searchDictationBehavior(_:)
description: Configures the dictation behavior for any search fields configured by the searchable modifier.
source: https://developer.apple.com/documentation/swiftui/view/searchdictationbehavior(_:)
timestamp: 2025-10-29T00:14:26.876Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# searchDictationBehavior(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, visionOS 1.0+

> Configures the dictation behavior for any search fields configured by the searchable modifier.

```swift
nonisolated func searchDictationBehavior(_ dictationBehavior: TextInputDictationBehavior) -> some View
```

## Discussion

By default, search fields on visionOS will automatically start dictation when looking at the dictation button in the search field. You can change this behavior by providing a value of [prevent Dictation](/documentation/swiftui/textinputdictationbehavior/preventdictation) to this modifier.

See the [Text Input Dictation Behavior](/documentation/swiftui/textinputdictationbehavior) type for more information on the available dictation behaviors.

## Dictating text

- [TextInputDictationActivation](/documentation/swiftui/textinputdictationactivation)
- [TextInputDictationBehavior](/documentation/swiftui/textinputdictationbehavior)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
