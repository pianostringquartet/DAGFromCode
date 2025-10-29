---
title: AccessibilityRotorContent
description: Content within an accessibility rotor.
source: https://developer.apple.com/documentation/swiftui/accessibilityrotorcontent
timestamp: 2025-10-29T00:14:24.235Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# AccessibilityRotorContent

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Content within an accessibility rotor.

```swift
@MainActor @preconcurrency protocol AccessibilityRotorContent
```

## Overview

Generally generated from control flow constructs like `ForEach` and `if`, and `AccessibilityRotorEntry`.

A type conforming to this protocol inherits `@preconcurrency @MainActor` isolation from the protocol if the conformance is included in the type’s base declaration:

```swift
struct MyCustomType: Transition {
    // `@preconcurrency @MainActor` isolation by default
}
```

Isolation to the main actor is the default, but it’s not required. Declare the conformance in an extension to opt out of main actor isolation:

```swift
extension MyCustomType: Transition {
    // `nonisolated` by default
}
```

## Conforming Types

- [AccessibilityRotorEntry](/documentation/swiftui/accessibilityrotorentry)
- [ForEach](/documentation/swiftui/foreach)
- [Group](/documentation/swiftui/group)

## Supporting types

- [body](/documentation/swiftui/accessibilityrotorcontent/body-swift.property) The internal content of this .
- [Body](/documentation/swiftui/accessibilityrotorcontent/body-swift.associatedtype) The type for the internal content of this .

## Creating rotors

- [AccessibilityRotorContentBuilder](/documentation/swiftui/accessibilityrotorcontentbuilder)
- [AccessibilityRotorEntry](/documentation/swiftui/accessibilityrotorentry)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
