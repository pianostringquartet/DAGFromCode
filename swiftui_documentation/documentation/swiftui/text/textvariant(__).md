---
title: textVariant(_:)
description: Controls the way text size variants are chosen.
source: https://developer.apple.com/documentation/swiftui/text/textvariant(_:)
timestamp: 2025-10-29T00:09:15.308Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text)

**Instance Method**

# textVariant(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Controls the way text size variants are chosen.

```swift
func textVariant<V>(_ preference: V) -> some View where V : TextVariantPreference
```

## Discussion

Certain types of text, such as `Text(_:format:)`, can generate strings of different size to better fit the available space. By default, all text uses the widest available variant. Setting the variant to be [size Dependent](/documentation/swiftui/textvariantpreference/sizedependent) allows the text to take the available space into account when choosing what content to display.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
