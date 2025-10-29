---
title: init()
description: Creates an empty tab sidebar customization.
source: https://developer.apple.com/documentation/swiftui/tabviewcustomization/init()
timestamp: 2025-10-29T00:11:35.830Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabviewcustomization](/documentation/swiftui/tabviewcustomization)

**Initializer**

# init()

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 2.0+

> Creates an empty tab sidebar customization.

```swift
init()
```

## Discussion

To set this customization on a tab view, use the [tabViewCustomization(_:)](/documentation/swiftui/view/tabviewcustomization(_:)) modifier.

With an empty customization, tabs will be visible according to the default builder visibilities, and sections will be ordered in the order declared in the tab view’s tab builder.

You can specify a default visibility for the tab in the tab bar and sidebar by attaching [defaultVisibility(_:for:)](/documentation/swiftui/tabcontent/defaultvisibility(_:for:)) to the tab.

You can change the default section order by changing the order in the builder. If there’s an existing persisted customization, reset the order by calling [resetTabOrder()](/documentation/swiftui/tabviewcustomization/sectioncustomization/resettaborder()) when you change the order.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
