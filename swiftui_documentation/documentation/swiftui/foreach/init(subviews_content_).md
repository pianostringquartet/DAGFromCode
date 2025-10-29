---
title: init(subviews:content:)
description: Creates an instance that uniquely identifies and creates views across updates based on the subviews of a given view.
source: https://developer.apple.com/documentation/swiftui/foreach/init(subviews:content:)
timestamp: 2025-10-29T00:09:19.852Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [foreach](/documentation/swiftui/foreach)

**Initializer**

# init(subviews:content:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Creates an instance that uniquely identifies and creates views across updates based on the subviews of a given view.

```swift
init<V>(subviews view: V, @ViewBuilder content: @escaping (Subview) -> Content) where Data == ForEachSubviewCollection<Content>, ID == Subview.ID, Content : View, V : View
```

## Parameters

**view**

The view to extract the subviews of.



**content**

The view builder that creates views from subviews.



## Discussion

Subviews are proxies to the resolved view they represent, meaning that modifiers applied to the original view will be applied before modifiers applied to the subview, and the view is resolved using the environment of its container, *not* the environment of the its subview proxy. Additionally, because subviews must represent a single leaf view, or container, a subview may represent a view after the application of styles. As such, attempting to apply a style to it may have no effect.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
