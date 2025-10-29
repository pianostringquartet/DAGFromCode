---
title: accessibilityCustomContent(_:_:importance:)
description: Add additional accessibility information to the view.
source: https://developer.apple.com/documentation/swiftui/modifiedcontent/accessibilitycustomcontent(_:_:importance:)
timestamp: 2025-10-29T00:11:19.662Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [modifiedcontent](/documentation/swiftui/modifiedcontent)

**Instance Method**

# accessibilityCustomContent(_:_:importance:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Add additional accessibility information to the view.

```swift
nonisolated func accessibilityCustomContent(_ key: AccessibilityCustomContentKey, _ value: Text?, importance: AXCustomContent.Importance = .default) -> ModifiedContent<Content, Modifier>
```

## Parameters

**key**

Key used to specify the identifier and label of the of the additional accessibility information entry.



**value**

Text value for the additional accessibility information. For example: “landscape.” A value of `nil` will remove any entry of additional information added earlier for any `key` with the same identifier.



## Discussion

Use this method to add information you want accessibility users to be able to access about this element, beyond the basics of label, value, and hint. For example, `accessibilityCustomContent` can be used to add information about the orientation of a photograph, or the number of people found in the picture.

> [!NOTE]
> Repeated calls of `accessibilityCustomContent` with `key`s having different identifiers will create new entries of additional information. Calling `accessibilityCustomContent` repeatedly with `key`s having matching identifiers will replace the previous entry.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
