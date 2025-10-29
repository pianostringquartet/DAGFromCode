---
title: accessibility(value:)
description: Adds a textual description of the value that the view contains.
source: https://developer.apple.com/documentation/swiftui/modifiedcontent/accessibility(value:)
timestamp: 2025-10-29T00:12:45.575Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [modifiedcontent](/documentation/swiftui/modifiedcontent)

**Instance Method**

# accessibility(value:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Adds a textual description of the value that the view contains.

```swift
nonisolated func accessibility(value: Text) -> ModifiedContent<Content, Modifier>
```

## Discussion

Use this method to describe the value represented by a view, but only if that’s different than the view’s label. For example, for a slider that you label as “Volume” using [accessibility(label:)](/documentation/swiftui/modifiedcontent/accessibility(label:)), you can provide the current volume setting, like “60%”, using [accessibility(value:)](/documentation/swiftui/modifiedcontent/accessibility(value:)).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
