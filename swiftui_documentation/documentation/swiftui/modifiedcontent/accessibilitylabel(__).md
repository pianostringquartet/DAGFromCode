---
title: accessibilityLabel(_:)
description: Adds a label to the view that describes its contents.
source: https://developer.apple.com/documentation/swiftui/modifiedcontent/accessibilitylabel(_:)
timestamp: 2025-10-29T00:10:11.915Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [modifiedcontent](/documentation/swiftui/modifiedcontent)

**Instance Method**

# accessibilityLabel(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Adds a label to the view that describes its contents.

```swift
nonisolated func accessibilityLabel(_ label: LocalizedStringResource) -> ModifiedContent<Content, Modifier>
```

## Discussion

Use this method to provide an accessibility label for a view that doesn’t display text, like an icon. For example, you could use this method to label a button that plays music with the text “Play”. Don’t include text in the label that repeats information that users already have. For example, don’t use the label “Play button” because a button already has a trait that identifies it as a button.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
