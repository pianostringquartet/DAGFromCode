---
title: init(_:isActive:destination:)
description: Creates a navigation link that presents a destination view when active, with a text label that the link generates from a localized string key.
source: https://developer.apple.com/documentation/swiftui/navigationlink/init(_:isactive:destination:)
timestamp: 2025-10-29T00:12:31.693Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationlink](/documentation/swiftui/navigationlink)

**Initializer**

# init(_:isActive:destination:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a navigation link that presents a destination view when active, with a text label that the link generates from a localized string key.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, isActive: Binding<Bool>, @ViewBuilder destination: () -> Destination)
```

## Parameters

**titleKey**

A localized string key for creating a text label.



**isActive**

A binding to a Boolean value that indicates whether `destination` is currently presented.



**destination**

A view for the navigation link to present.



## Creating links with view builders

- [init(isActive:destination:label:)](/documentation/swiftui/navigationlink/init(isactive:destination:label:))
- [init(_:tag:selection:destination:)](/documentation/swiftui/navigationlink/init(_:tag:selection:destination:))
- [init(tag:selection:destination:label:)](/documentation/swiftui/navigationlink/init(tag:selection:destination:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
