---
title: init(isExpanded:content:label:)
description: Creates a disclosure group with the given label and content views, and a binding to the expansion state (expanded or collapsed).
source: https://developer.apple.com/documentation/swiftui/disclosuregroup/init(isexpanded:content:label:)
timestamp: 2025-10-29T00:12:31.035Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [disclosuregroup](/documentation/swiftui/disclosuregroup)

**Initializer**

# init(isExpanded:content:label:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> Creates a disclosure group with the given label and content views, and a binding to the expansion state (expanded or collapsed).

```swift
init(isExpanded: Binding<Bool>, @ViewBuilder content: @escaping () -> Content, @ViewBuilder label: () -> Label)
```

## Parameters

**isExpanded**

A binding to a Boolean value that determines the group’s expansion state (expanded or collapsed).



**content**

The content shown when the disclosure group expands.



**label**

A view that describes the content of the disclosure group.



## Creating a disclosure group

- [init(_:content:)](/documentation/swiftui/disclosuregroup/init(_:content:))
- [init(content:label:)](/documentation/swiftui/disclosuregroup/init(content:label:))
- [init(_:isExpanded:content:)](/documentation/swiftui/disclosuregroup/init(_:isexpanded:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
