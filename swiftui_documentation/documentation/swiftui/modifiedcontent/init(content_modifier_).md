---
title: init(content:modifier:)
description: A structure that defines the content and modifier needed to produce a new view or view modifier.
source: https://developer.apple.com/documentation/swiftui/modifiedcontent/init(content:modifier:)
timestamp: 2025-10-29T00:14:12.677Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [modifiedcontent](/documentation/swiftui/modifiedcontent)

**Initializer**

# init(content:modifier:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A structure that defines the content and modifier needed to produce a new view or view modifier.

```swift
nonisolated init(content: Content, modifier: Modifier)
```

## Parameters

**content**

The content that the modifier changes.



**modifier**

The modifier to apply to the content.



## Discussion

If `content` is a [View](/documentation/swiftui/view) and `modifier` is a [View Modifier](/documentation/swiftui/viewmodifier), the result is a [View](/documentation/swiftui/view). If `content` and `modifier` are both view modifiers, then the result is a new [View Modifier](/documentation/swiftui/viewmodifier) combining them.

## Creating a modified content view

- [content](/documentation/swiftui/modifiedcontent/content)
- [modifier](/documentation/swiftui/modifiedcontent/modifier)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
