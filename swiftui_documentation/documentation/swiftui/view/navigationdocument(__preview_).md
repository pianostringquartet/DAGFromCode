---
title: navigationDocument(_:preview:)
description: Configures the view’s document for purposes of navigation.
source: https://developer.apple.com/documentation/swiftui/view/navigationdocument(_:preview:)
timestamp: 2025-10-29T00:14:43.971Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# navigationDocument(_:preview:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+, watchOS 9.0+

> Configures the view’s document for purposes of navigation.

```swift
nonisolated func navigationDocument<D, I1, I2>(_ document: D, preview: SharePreview<I1, I2>) -> some View where D : Transferable, I1 : Transferable, I2 : Transferable
```

## Parameters

**document**

The transferable content associated to the navigation title.



**preview**

The preview of the document to use when sharing.



## Discussion

In iOS, iPadOS, this populates the title menu with a header previewing the document. In macOS, this populates a proxy icon.

Refer to the [Configure-Your-Apps-Navigation](/documentation/swiftui/configure-your-apps-navigation-titles) article for more information on navigation document modifiers.

## Setting titles for navigation content

- [navigationTitle(_:)](/documentation/swiftui/view/navigationtitle(_:))
- [navigationSubtitle(_:)](/documentation/swiftui/view/navigationsubtitle(_:))
- [navigationDocument(_:)](/documentation/swiftui/view/navigationdocument(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
