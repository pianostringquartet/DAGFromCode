---
title: zoom(sourceID:in:)
description: A navigation transition that zooms the appearing view from a given source view.
source: https://developer.apple.com/documentation/swiftui/navigationtransition/zoom(sourceid:in:)
timestamp: 2025-10-29T00:15:27.248Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationtransition](/documentation/swiftui/navigationtransition)

**Type Method**

# zoom(sourceID:in:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> A navigation transition that zooms the appearing view from a given source view.

```swift
static func zoom(sourceID: some Hashable, in namespace: Namespace.ID) -> ZoomNavigationTransition
```

## Parameters

**sourceID**

The identifier you provide to a corresponding `matchedTransitionSource` modifier.



**namespace**

The namespace where you define the `id`. You can create new namespaces by adding the [Namespace](/documentation/swiftui/namespace) attribute to a [View](/documentation/swiftui/view) type, then reading its value in the view’s body method.



## Discussion

Indicate the source view using the `View/matchedTransitionSource(id:namespace:)` modifier.

## Getting built-in transitions

- [automatic](/documentation/swiftui/navigationtransition/automatic)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
