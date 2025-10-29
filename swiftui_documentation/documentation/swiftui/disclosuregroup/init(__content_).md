---
title: init(_:content:)
description: Creates a disclosure group, using a provided localized string key to create a text view for the label.
source: https://developer.apple.com/documentation/swiftui/disclosuregroup/init(_:content:)
timestamp: 2025-10-29T00:11:42.638Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [disclosuregroup](/documentation/swiftui/disclosuregroup)

**Initializer**

# init(_:content:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> Creates a disclosure group, using a provided localized string key to create a text view for the label.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, @ViewBuilder content: @escaping () -> Content)
```

## Parameters

**titleKey**

The key for the localized label of `self` that describes the content of the disclosure group.



**content**

The content shown when the disclosure group expands.



## Creating a disclosure group

- [init(content:label:)](/documentation/swiftui/disclosuregroup/init(content:label:))
- [init(_:isExpanded:content:)](/documentation/swiftui/disclosuregroup/init(_:isexpanded:content:))
- [init(isExpanded:content:label:)](/documentation/swiftui/disclosuregroup/init(isexpanded:content:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
