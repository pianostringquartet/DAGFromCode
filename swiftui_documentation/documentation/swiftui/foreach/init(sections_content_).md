---
title: init(sections:content:)
description: Creates an instance that uniquely identifies and creates views across updates based on the sections of a given view.
source: https://developer.apple.com/documentation/swiftui/foreach/init(sections:content:)
timestamp: 2025-10-29T00:10:47.282Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [foreach](/documentation/swiftui/foreach)

**Initializer**

# init(sections:content:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Creates an instance that uniquely identifies and creates views across updates based on the sections of a given view.

```swift
init<V>(sections view: V, @ViewBuilder content: @escaping (SectionConfiguration) -> Content) where Data == ForEachSectionCollection<Content>, ID == SectionConfiguration.ID, Content : View, V : View
```

## Parameters

**view**

The view to extract the sections of.



**content**

The view builder that creates views from sections

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
