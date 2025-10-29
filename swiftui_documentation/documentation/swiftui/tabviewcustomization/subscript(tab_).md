---
title: subscript(tab:)
description: The customization of the tab, identified by its customization identifier.
source: https://developer.apple.com/documentation/swiftui/tabviewcustomization/subscript(tab:)
timestamp: 2025-10-29T00:11:00.943Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabviewcustomization](/documentation/swiftui/tabviewcustomization)

**Instance Subscript**

# subscript(tab:)

**Available on:** iOS 18.4+, iPadOS 18.4+, Mac Catalyst 18.4+, macOS 15.4+, visionOS 2.4+

> The customization of the tab, identified by its customization identifier.

```swift
subscript(tab id: String) -> TabViewCustomization.TabCustomization { get set }
```

## Overview

You can imperatively set properties by subscripting with the tab ID. The following example sets the tab’s sidebar visibility:

```swift
customization[tab: "com.myApp.alerts"].sidebarVisibility = .hidden
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
