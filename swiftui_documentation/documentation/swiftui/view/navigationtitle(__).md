---
title: navigationTitle(_:)
description: Configures the view’s title for purposes of navigation, using a string binding.
source: https://developer.apple.com/documentation/swiftui/view/navigationtitle(_:)
timestamp: 2025-10-29T00:15:27.737Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# navigationTitle(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Configures the view’s title for purposes of navigation, using a string binding.

```swift
nonisolated func navigationTitle(_ title: Binding<String>) -> some View
```

## Parameters

**title**

The text of the title.



## Discussion

In iOS, iPadOS, and macOS, this allows editing the navigation title when the title is displayed in the toolbar.

Refer to the [Configure-Your-Apps-Navigation](/documentation/swiftui/configure-your-apps-navigation-titles) article for more information on navigation title modifiers.

## Setting titles for navigation content

- [navigationSubtitle(_:)](/documentation/swiftui/view/navigationsubtitle(_:))
- [navigationDocument(_:)](/documentation/swiftui/view/navigationdocument(_:))
- [navigationDocument(_:preview:)](/documentation/swiftui/view/navigationdocument(_:preview:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
