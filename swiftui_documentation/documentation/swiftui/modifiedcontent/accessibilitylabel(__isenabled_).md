---
title: accessibilityLabel(_:isEnabled:)
description: Adds a label to the view that describes its contents.
source: https://developer.apple.com/documentation/swiftui/modifiedcontent/accessibilitylabel(_:isenabled:)
timestamp: 2025-10-29T00:13:42.438Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [modifiedcontent](/documentation/swiftui/modifiedcontent)

**Instance Method**

# accessibilityLabel(_:isEnabled:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Adds a label to the view that describes its contents.

```swift
nonisolated func accessibilityLabel(_ label: LocalizedStringResource, isEnabled: Bool) -> ModifiedContent<Content, Modifier>
```

## Parameters

**label**

The accessibility label to apply.



**isEnabled**

If true the accessibility label is applied; otherwise the accessibility label is unchanged.



## Discussion

Use this method to provide an accessibility label for a view that doesn’t display text, like an icon. For example, you could use this method to label a button that plays music with the text “Play”. Don’t include text in the label that repeats information that users already have. For example, don’t use the label “Play button” because a button already has a trait that identifies it as a button.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
