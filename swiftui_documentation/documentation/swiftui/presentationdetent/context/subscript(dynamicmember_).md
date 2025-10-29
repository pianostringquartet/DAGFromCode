---
title: subscript(dynamicMember:)
description: Returns the value specified by the keyPath from the environment.
source: https://developer.apple.com/documentation/swiftui/presentationdetent/context/subscript(dynamicmember:)
timestamp: 2025-10-29T00:09:34.537Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [presentationdetent](/documentation/swiftui/presentationdetent) › [context](/documentation/swiftui/presentationdetent/context)

**Instance Subscript**

# subscript(dynamicMember:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Returns the value specified by the keyPath from the environment.

```swift
subscript<T>(dynamicMember keyPath: KeyPath<EnvironmentValues, T>) -> T { get }
```

## Overview

This uses the environment from where the sheet is shown, not the environment where the presentation modifier is applied.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
