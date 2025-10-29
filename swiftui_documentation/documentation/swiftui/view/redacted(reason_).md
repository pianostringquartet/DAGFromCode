---
title: redacted(reason:)
description: Adds a reason to apply a redaction to this view hierarchy.
source: https://developer.apple.com/documentation/swiftui/view/redacted(reason:)
timestamp: 2025-10-29T00:13:35.980Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# redacted(reason:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Adds a reason to apply a redaction to this view hierarchy.

```swift
nonisolated func redacted(reason: RedactionReasons) -> some View
```

## Discussion

Adding a redaction is an additive process: any redaction provided will be added to the reasons provided by the parent.

## Redacting private content

- [Designing your app for the Always On state](/documentation/watchOS-Apps/designing-your-app-for-the-always-on-state)
- [privacySensitive(_:)](/documentation/swiftui/view/privacysensitive(_:))
- [unredacted()](/documentation/swiftui/view/unredacted())
- [redactionReasons](/documentation/swiftui/environmentvalues/redactionreasons)
- [isSceneCaptured](/documentation/swiftui/environmentvalues/isscenecaptured)
- [RedactionReasons](/documentation/swiftui/redactionreasons)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
