---
title: accessibilityRotorEntry(id:in:)
description: Defines an explicit identifier tying an Accessibility element for this view to an entry in an Accessibility Rotor.
source: https://developer.apple.com/documentation/swiftui/view/accessibilityrotorentry(id:in:)
timestamp: 2025-10-29T00:11:33.237Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibilityRotorEntry(id:in:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Defines an explicit identifier tying an Accessibility element for this view to an entry in an Accessibility Rotor.

```swift
nonisolated func accessibilityRotorEntry<ID>(id: ID, in namespace: Namespace.ID) -> some View where ID : Hashable
```

## Parameters

**id**

An arbitrary hashable identifier. Pass this same value when initializing an AccessibilityRotorEntry.



**namespace**

A namespace created with `@Namespace()`. Pass this same namespace when initializing an `AccessibilityRotorEntry`.



## Discussion

Use this when creating an AccessibilityRotorEntry without a namespace does not allow SwiftUI to automatically find and reveal the element, or when the Rotor entry should be associated with a sub-element of a complex view generated in a ForEach, for example.

## Configuring rotors

- [accessibilityLinkedGroup(id:in:)](/documentation/swiftui/view/accessibilitylinkedgroup(id:in:))
- [accessibilitySortPriority(_:)](/documentation/swiftui/view/accessibilitysortpriority(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
