---
title: EditMode.transient
description: The view is in a temporary edit mode.
source: https://developer.apple.com/documentation/swiftui/editmode/transient
timestamp: 2025-10-29T00:11:02.945Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [editmode](/documentation/swiftui/editmode)

**Case**

# EditMode.transient

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+

> The view is in a temporary edit mode.

```swift
case transient
```

## Discussion

The use of this state varies by platform and for different controls. As an example, SwiftUI might engage temporary edit mode over the duration of a swipe gesture.

The [is Editing](/documentation/swiftui/editmode/isediting) property is `true` in this state.

## Getting edit modes

- [EditMode.active](/documentation/swiftui/editmode/active)
- [EditMode.inactive](/documentation/swiftui/editmode/inactive)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
