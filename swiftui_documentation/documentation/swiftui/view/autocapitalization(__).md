---
title: autocapitalization(_:)
description: Sets whether to apply auto-capitalization to this view.
source: https://developer.apple.com/documentation/swiftui/view/autocapitalization(_:)
timestamp: 2025-10-29T00:10:35.532Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# autocapitalization(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+

> Sets whether to apply auto-capitalization to this view.

```swift
nonisolated func autocapitalization(_ style: UITextAutocapitalizationType) -> some View
```

## Parameters

**style**

One of the autocapitalization modes defined in the [UIText Autocapitalization Type](/documentation/UIKit/UITextAutocapitalizationType) enumeration.



## Discussion

Use this method when you need to automatically capitalize words, sentences, or other text like proper nouns.

In example below, as the user enters text each word is automatically capitalized:

```swift
TextField("Last, First", text: $fullName)
    .autocapitalization(UITextAutocapitalizationType.words)
```

The [UIText Autocapitalization Type](/documentation/UIKit/UITextAutocapitalizationType) enumeration defines the available capitalization modes. The default is [sentences](/documentation/UIKit/UITextAutocapitalizationType/sentences).

## Text modifiers

- [disableAutocorrection(_:)](/documentation/swiftui/view/disableautocorrection(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
