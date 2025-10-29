---
title: init(_:textRange:prepare:)
description: Create a Rotor entry with a specific label and range. This Rotor entry will be associated with the Accessibility element that owns the Rotor.
source: https://developer.apple.com/documentation/swiftui/accessibilityrotorentry/init(_:textrange:prepare:)
timestamp: 2025-10-29T00:09:34.647Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [accessibilityrotorentry](/documentation/swiftui/accessibilityrotorentry)

**Initializer**

# init(_:textRange:prepare:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Create a Rotor entry with a specific label and range. This Rotor entry will be associated with the Accessibility element that owns the Rotor.

```swift
init(_ label: LocalizedStringResource, textRange: Range<String.Index>, prepare: @escaping () -> Void = {}) where ID == Never
```

## Parameters

**label**

Localized string used to show this Rotor entry to users. If no label is specified, the Rotor entry will be labeled based on the text at that range.



**prepare**

Optional closure to run before a Rotor entry is navigated to, to prepare the UI as needed. This can be used to bring the UI element or text on-screen if it isn’t already, and SwiftUI not able to automatically scroll to it.



## Creating a rotor entry

- [init(_:id:textRange:prepare:)](/documentation/swiftui/accessibilityrotorentry/init(_:id:textrange:prepare:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
