---
title: AccessibilityCustomContentKey
description: Key used to specify the identifier and label associated with an entry of additional accessibility information.
source: https://developer.apple.com/documentation/swiftui/accessibilitycustomcontentkey
timestamp: 2025-10-29T00:14:31.535Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AccessibilityCustomContentKey

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Key used to specify the identifier and label associated with an entry of additional accessibility information.

```swift
struct AccessibilityCustomContentKey
```

## Overview

Use `AccessibilityCustomContentKey` and the associated modifiers taking this value as a parameter in order to simplify clearing or replacing entries of additional information that are manipulated from multiple places in your code.

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)

## Creating a key

- [init(_:)](/documentation/swiftui/accessibilitycustomcontentkey/init(_:)) Create an  with the specified label.
- [init(_:id:)](/documentation/swiftui/accessibilitycustomcontentkey/init(_:id:)) Create an  with the specified label and identifier.

## Adding custom descriptions

- [accessibilityCustomContent(_:_:importance:)](/documentation/swiftui/view/accessibilitycustomcontent(_:_:importance:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
