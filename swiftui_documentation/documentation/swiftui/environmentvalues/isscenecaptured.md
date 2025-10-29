---
title: isSceneCaptured
description: The current capture state.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/isscenecaptured
timestamp: 2025-10-29T00:12:58.326Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# isSceneCaptured

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, visionOS 1.0+

> The current capture state.

```swift
var isSceneCaptured: Bool { get set }
```

## Discussion

Use this value to determine whether the scene is actively being cloned to another destination (like during AirPlay) or is being mirrored or recorded.

Your app can respond to changes in this value to take appropriate action, like obscuring content.

## Redacting private content

- [Designing your app for the Always On state](/documentation/watchOS-Apps/designing-your-app-for-the-always-on-state)
- [privacySensitive(_:)](/documentation/swiftui/view/privacysensitive(_:))
- [redacted(reason:)](/documentation/swiftui/view/redacted(reason:))
- [unredacted()](/documentation/swiftui/view/unredacted())
- [redactionReasons](/documentation/swiftui/environmentvalues/redactionreasons)
- [RedactionReasons](/documentation/swiftui/redactionreasons)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
