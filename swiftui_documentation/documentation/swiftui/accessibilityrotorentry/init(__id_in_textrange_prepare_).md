---
title: init(_:id:in:textRange:prepare:)
description: Create a Rotor entry with a specific label, identifier and namespace, and with an optional range.
source: https://developer.apple.com/documentation/swiftui/accessibilityrotorentry/init(_:id:in:textrange:prepare:)
timestamp: 2025-10-29T00:13:31.401Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [accessibilityrotorentry](/documentation/swiftui/accessibilityrotorentry)

**Initializer**

# init(_:id:in:textRange:prepare:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Create a Rotor entry with a specific label, identifier and namespace, and with an optional range.

```swift
init(_ label: LocalizedStringResource, id: ID, in namespace: Namespace.ID, textRange: Range<String.Index>? = nil, prepare: @escaping () -> Void = {})
```

## Parameters

**label**

Localized string used to show this Rotor entry to users.



**id**

Used to find the UI element associated with this Rotor entry. This identifier and namespace should match a call to `accessibilityRotorEntry(id:in)`.



**namespace**

Namespace for this identifier. Should match a call to `accessibilityRotorEntry(id:in)`.



**textRange**

Optional range of text associated with this Rotor entry. This should be a range within text that is set as the accessibility label or accessibility value of the associated element.



**prepare**

Optional closure to run before a Rotor entry is navigated to, to prepare the UI as needed. This should be used to bring the Accessibility element on-screen, if scrolling is needed to get to it.



## Creating an identified rotor entry in a namespace

- [init(_:_:in:textRange:prepare:)](/documentation/swiftui/accessibilityrotorentry/init(_:_:in:textrange:prepare:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
