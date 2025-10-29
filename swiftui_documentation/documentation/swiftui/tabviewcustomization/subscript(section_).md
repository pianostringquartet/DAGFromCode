---
title: subscript(section:)
description: The customization of the section, identified by its customization identifier.
source: https://developer.apple.com/documentation/swiftui/tabviewcustomization/subscript(section:)
timestamp: 2025-10-29T00:11:48.310Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabviewcustomization](/documentation/swiftui/tabviewcustomization)

**Instance Subscript**

# subscript(section:)

**Available on:** iOS 18.4+, iPadOS 18.4+, Mac Catalyst 18.4+, macOS 15.4+, visionOS 2.4+

> The customization of the section, identified by its customization identifier.

```swift
subscript(section id: String) -> TabViewCustomization.SectionCustomization { get set }
```

## Overview

Section tab order can be read by subscripting with the tab section’s id:

```swift
let order = customization[section: "com.myApp.categories"].tabOrder
```

To reset the order of an individual section, use [resetTabOrder()](/documentation/swiftui/tabviewcustomization/sectioncustomization/resettaborder()). To reset the order of all sections, use [resetSectionOrder()](/documentation/swiftui/tabviewcustomization/resetsectionorder()).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
