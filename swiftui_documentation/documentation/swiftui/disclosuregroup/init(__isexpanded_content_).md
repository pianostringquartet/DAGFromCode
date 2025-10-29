---
title: init(_:isExpanded:content:)
description: Creates a disclosure group, using a provided localized string key to create a text view for the label, and a binding to the expansion state (expanded or collapsed).
source: https://developer.apple.com/documentation/swiftui/disclosuregroup/init(_:isexpanded:content:)
timestamp: 2025-10-29T00:10:12.925Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [disclosuregroup](/documentation/swiftui/disclosuregroup)

**Initializer**

# init(_:isExpanded:content:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> Creates a disclosure group, using a provided localized string key to create a text view for the label, and a binding to the expansion state (expanded or collapsed).

```swift
nonisolated init(_ titleKey: LocalizedStringKey, isExpanded: Binding<Bool>, @ViewBuilder content: @escaping () -> Content)
```

## Parameters

**titleKey**

The key for the localized label of `self` that describes the content of the disclosure group.



**isExpanded**

A binding to a Boolean value that determines the group’s expansion state (expanded or collapsed).



**content**

The content shown when the disclosure group expands.



## Creating a disclosure group

- [init(_:content:)](/documentation/swiftui/disclosuregroup/init(_:content:))
- [init(content:label:)](/documentation/swiftui/disclosuregroup/init(content:label:))
- [init(isExpanded:content:label:)](/documentation/swiftui/disclosuregroup/init(isexpanded:content:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
