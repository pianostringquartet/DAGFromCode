---
title: tabBarVisibility
description: The visibility of the tab in the tab bar.
source: https://developer.apple.com/documentation/swiftui/tabviewcustomization/tabcustomization/tabbarvisibility
timestamp: 2025-10-29T00:13:07.911Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabviewcustomization](/documentation/swiftui/tabviewcustomization) › [tabcustomization](/documentation/swiftui/tabviewcustomization/tabcustomization)

**Instance Property**

# tabBarVisibility

**Available on:** iOS 18.4+, iPadOS 18.4+, Mac Catalyst 18.4+

> The visibility of the tab in the tab bar.

```swift
var tabBarVisibility: Visibility { get }
```

## Discussion

You can change the default visibility by using the `TabContent/defaultVisibility(_:for)` with a `AdaptableTabBarPlacement.tabBar` placement.

If the ID isn’t associated with a tab or the tab has not been customized, a default value of `.automatic` is returned.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
