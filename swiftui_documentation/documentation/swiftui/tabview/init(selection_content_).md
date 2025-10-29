---
title: init(selection:content:)
description: Creates a tab view that uses a builder to create and specify selection values for its tabs.
source: https://developer.apple.com/documentation/swiftui/tabview/init(selection:content:)
timestamp: 2025-10-29T00:11:24.151Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabview](/documentation/swiftui/tabview)

**Initializer**

# init(selection:content:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Creates a tab view that uses a builder to create and specify selection values for its tabs.

```swift
init<C>(selection: Binding<SelectionValue>, @TabContentBuilder<SelectionValue> content: () -> C) where Content == TabContentBuilder<SelectionValue>.Content<C>, C : TabContent
```

## Parameters

**selection**

The selection in the TabView. The value of this binding must match the `value` of the tabs in `content`.



**content**

The [Tab](/documentation/swiftui/tab) content.



## Creating a tab view

- [init(content:)](/documentation/swiftui/tabview/init(content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
