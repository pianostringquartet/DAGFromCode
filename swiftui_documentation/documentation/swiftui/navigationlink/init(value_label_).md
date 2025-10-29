---
title: init(value:label:)
description: Creates a navigation link that presents the view corresponding to a codable value.
source: https://developer.apple.com/documentation/swiftui/navigationlink/init(value:label:)
timestamp: 2025-10-29T00:09:58.570Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationlink](/documentation/swiftui/navigationlink)

**Initializer**

# init(value:label:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a navigation link that presents the view corresponding to a codable value.

```swift
nonisolated init<P>(value: P?, @ViewBuilder label: () -> Label) where P : Decodable, P : Encodable, P : Hashable
```

## Parameters

**value**

An optional value to present. When the user selects the link, SwiftUI stores a copy of the value. Pass a `nil` value to disable the link.



**label**

A label that describes the view that this link presents.



## Discussion

When someone activates the navigation link that this initializer creates, SwiftUI looks for a nearby [navigationDestination(for:destination:)](/documentation/swiftui/view/navigationdestination(for:destination:)) view modifier with a `data` input parameter that matches the type of this initializer’s `value` input, with one of the following outcomes:

- If SwiftUI finds a matching modifier within the view hierarchy of an enclosing [Navigation Stack](/documentation/swiftui/navigationstack), it pushes the modifier’s corresponding `destination` view onto the stack.
- If SwiftUI finds a matching modifier in the view hierarchy of a stack that’s in a later column of a [Navigation Split View](/documentation/swiftui/navigationsplitview), it puts the modifier’s destination view as the first and only item onto the stack while preserving the stack’s root view.
- If there’s no matching modifier, but the link appears in a [List](/documentation/swiftui/list) with selection inside a leading column of a navigation split view, the link updates the selection, which might affect the appearance of a trailing view. For an example of this, see [Navigation Link](/documentation/swiftui/navigationlink).
- In other cases, the link doesn’t do anything.

Because this initializer takes a value that conforms to the [Codable](/documentation/Swift/Codable) protocol, you ensure that a [Navigation Path](/documentation/swiftui/navigationpath) that includes this link can produce a non-`nil` value for its [codable](/documentation/swiftui/navigationpath/codable) property. This helps to make the path serializable.

## Presenting a value

- [init(_:value:)](/documentation/swiftui/navigationlink/init(_:value:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
