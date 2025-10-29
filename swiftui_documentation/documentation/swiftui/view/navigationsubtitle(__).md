---
title: navigationSubtitle(_:)
description: Configures the view’s subtitle for purposes of navigation.
source: https://developer.apple.com/documentation/swiftui/view/navigationsubtitle(_:)
timestamp: 2025-10-29T00:12:43.271Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# navigationSubtitle(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 14.0+, macOS 11.0+

> Configures the view’s subtitle for purposes of navigation.

```swift
nonisolated func navigationSubtitle(_ subtitle: Text) -> some View
```

## Parameters

**subtitle**

The subtitle to display.



## Discussion

A view’s navigation subtitle is used to provide additional contextual information alongside the navigation title. On macOS, the primary destination’s subtitle is displayed with the navigation title in the titlebar. On iOS and iPadOS, the subtitle is displayed with the navigation title in the navigation bar.

## Setting titles for navigation content

- [navigationTitle(_:)](/documentation/swiftui/view/navigationtitle(_:))
- [navigationDocument(_:)](/documentation/swiftui/view/navigationdocument(_:))
- [navigationDocument(_:preview:)](/documentation/swiftui/view/navigationdocument(_:preview:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
