---
title: navigationDocument(_:)
description: Configures the view’s document for purposes of navigation.
source: https://developer.apple.com/documentation/swiftui/view/navigationdocument(_:)
timestamp: 2025-10-29T00:10:25.128Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# navigationDocument(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Configures the view’s document for purposes of navigation.

```swift
nonisolated func navigationDocument(_ url: URL) -> some View
```

## Discussion

In iOS, iPadOS, this populates the title menu with a header previewing the document. In macOS, this populates a proxy icon.

Refer to the [Configure-Your-Apps-Navigation](/documentation/swiftui/configure-your-apps-navigation-titles) article for more information on navigation document modifiers.

## Setting titles for navigation content

- [navigationTitle(_:)](/documentation/swiftui/view/navigationtitle(_:))
- [navigationSubtitle(_:)](/documentation/swiftui/view/navigationsubtitle(_:))
- [navigationDocument(_:preview:)](/documentation/swiftui/view/navigationdocument(_:preview:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
