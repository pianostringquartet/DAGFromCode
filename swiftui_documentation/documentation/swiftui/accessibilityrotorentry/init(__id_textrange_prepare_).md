---
title: init(_:id:textRange:prepare:)
description: Create a Rotor entry with a specific label and identifier, with an optional range.
source: https://developer.apple.com/documentation/swiftui/accessibilityrotorentry/init(_:id:textrange:prepare:)
timestamp: 2025-10-29T00:09:46.200Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [accessibilityrotorentry](/documentation/swiftui/accessibilityrotorentry)

**Initializer**

# init(_:id:textRange:prepare:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Create a Rotor entry with a specific label and identifier, with an optional range.

```swift
init(_ label: LocalizedStringResource, id: ID, textRange: Range<String.Index>? = nil, prepare: @escaping () -> Void = {})
```

## Parameters

**label**

Localized string used to show this Rotor entry to users.



**id**

Used to find the UI element associated with this Rotor entry. This identifier should be used within a `scrollView`, either in a `ForEach` or using an `id` call.



**textRange**

Optional range of text associated with this Rotor entry. This should be a range within text that is set as the accessibility label or accessibility value of the associated element.



**prepare**

Optional closure to run before a Rotor entry is navigated to, to prepare the UI as needed. This can be used to bring the UI element on-screen if it isn’t already, and SwiftUI is not able to automatically scroll to it.



## Creating a rotor entry

- [init(_:textRange:prepare:)](/documentation/swiftui/accessibilityrotorentry/init(_:textrange:prepare:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
