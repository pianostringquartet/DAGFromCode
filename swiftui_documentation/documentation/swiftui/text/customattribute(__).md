---
title: customAttribute(_:)
description: Adds a custom attribute to the text view.
source: https://developer.apple.com/documentation/swiftui/text/customattribute(_:)
timestamp: 2025-10-29T00:11:27.761Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [text](/documentation/swiftui/text)

**Instance Method**

# customAttribute(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Adds a custom attribute to the text view.

```swift
func customAttribute<T>(_ value: T) -> Text where T : TextAttribute
```

## Parameters

**value**

The attribute to attach.



## Return Value

A version of the text view with `value` attached.

## Discussion

Only one attribute of each type may be attached to each text view, with inner attributes taking precedence.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
