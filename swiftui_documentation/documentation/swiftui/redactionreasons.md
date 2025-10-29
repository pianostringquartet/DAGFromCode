---
title: RedactionReasons
description: The reasons to apply a redaction to data displayed on screen.
source: https://developer.apple.com/documentation/swiftui/redactionreasons
timestamp: 2025-10-29T00:12:15.120Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# RedactionReasons

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> The reasons to apply a redaction to data displayed on screen.

```swift
struct RedactionReasons
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [ExpressibleByArrayLiteral](/documentation/Swift/ExpressibleByArrayLiteral)
- [OptionSet](/documentation/Swift/OptionSet)
- [RawRepresentable](/documentation/Swift/RawRepresentable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [SetAlgebra](/documentation/Swift/SetAlgebra)

## Getting redaction reasons

- [invalidated](/documentation/swiftui/redactionreasons/invalidated) Displayed data should appear as invalidated and pending a new update.
- [placeholder](/documentation/swiftui/redactionreasons/placeholder) Displayed data should appear as generic placeholders.
- [privacy](/documentation/swiftui/redactionreasons/privacy) Displayed data should be obscured to protect private information.

## Creating redaction reasons

- [init(rawValue:)](/documentation/swiftui/redactionreasons/init(rawvalue:)) Creates a new set from a raw value.
- [rawValue](/documentation/swiftui/redactionreasons/rawvalue) The raw value.

## Redacting private content

- [Designing your app for the Always On state](/documentation/watchOS-Apps/designing-your-app-for-the-always-on-state)
- [privacySensitive(_:)](/documentation/swiftui/view/privacysensitive(_:))
- [redacted(reason:)](/documentation/swiftui/view/redacted(reason:))
- [unredacted()](/documentation/swiftui/view/unredacted())
- [redactionReasons](/documentation/swiftui/environmentvalues/redactionreasons)
- [isSceneCaptured](/documentation/swiftui/environmentvalues/isscenecaptured)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
