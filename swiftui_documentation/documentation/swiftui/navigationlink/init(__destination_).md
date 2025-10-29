---
title: init(_:destination:)
description: Creates a navigation link that presents a destination view, with a text label that the link generates from a localized string key.
source: https://developer.apple.com/documentation/swiftui/navigationlink/init(_:destination:)
timestamp: 2025-10-29T00:09:54.801Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationlink](/documentation/swiftui/navigationlink)

**Initializer**

# init(_:destination:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a navigation link that presents a destination view, with a text label that the link generates from a localized string key.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, @ViewBuilder destination: () -> Destination)
```

## Parameters

**titleKey**

A localized string key for creating a text label.



**destination**

A view for the navigation link to present.



## Presenting a destination view

- [init(destination:label:)](/documentation/swiftui/navigationlink/init(destination:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
