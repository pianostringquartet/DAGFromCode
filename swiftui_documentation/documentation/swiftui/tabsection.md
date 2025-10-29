---
title: TabSection
description: A container that you can use to add hierarchy within a tab view.
source: https://developer.apple.com/documentation/swiftui/tabsection
timestamp: 2025-10-29T00:11:49.759Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# TabSection

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> A container that you can use to add hierarchy within a tab view.

```swift
struct TabSection<Header, Content, Footer, SelectionValue>
```

## Overview

Use [Tab Section](/documentation/swiftui/tabsection) to organize tab content into separate sections. Each section has custom tab content that you provide on a per-instance basis. You can also provide a header for each section.

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [TabContent](/documentation/swiftui/tabcontent)

## Creating a tab section

- [init(content:)](/documentation/swiftui/tabsection/init(content:)) Creates a section with the provided section content.
- [init(_:content:)](/documentation/swiftui/tabsection/init(_:content:)) Creates a section with the provided content.
- [init(content:header:)](/documentation/swiftui/tabsection/init(content:header:)) Creates a section with a header and the provided section content.

## Supporting types

- [DefaultTabLabel](/documentation/swiftui/defaulttablabel) The default label to use for a tab or tab section.

## Presenting views in tabs

- [Enhancing your app’s content with tab navigation](/documentation/swiftui/enhancing-your-app-content-with-tab-navigation)
- [TabView](/documentation/swiftui/tabview)
- [Tab](/documentation/swiftui/tab)
- [TabRole](/documentation/swiftui/tabrole)
- [tabViewStyle(_:)](/documentation/swiftui/view/tabviewstyle(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
