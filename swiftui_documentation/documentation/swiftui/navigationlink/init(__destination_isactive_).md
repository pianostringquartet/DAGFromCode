---
title: init(_:destination:isActive:)
description: Creates a navigation link that presents a destination view when active, with a text label that the link generates from a localized string key.
source: https://developer.apple.com/documentation/swiftui/navigationlink/init(_:destination:isactive:)
timestamp: 2025-10-29T00:12:53.218Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationlink](/documentation/swiftui/navigationlink)

**Initializer**

# init(_:destination:isActive:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a navigation link that presents a destination view when active, with a text label that the link generates from a localized string key.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, destination: Destination, isActive: Binding<Bool>)
```

## Parameters

**titleKey**

A localized string key for creating a text label.



**destination**

A view for the navigation link to present.



**isActive**

A binding to a Boolean value that indicates whether `destination` is currently presented.



## Creating links with view arguments

- [init(destination:isActive:label:)](/documentation/swiftui/navigationlink/init(destination:isactive:label:))
- [init(_:destination:tag:selection:)](/documentation/swiftui/navigationlink/init(_:destination:tag:selection:))
- [init(destination:tag:selection:label:)](/documentation/swiftui/navigationlink/init(destination:tag:selection:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
