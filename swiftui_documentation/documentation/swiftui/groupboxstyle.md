---
title: GroupBoxStyle
description: A type that specifies the appearance and interaction of all group boxes within a view hierarchy.
source: https://developer.apple.com/documentation/swiftui/groupboxstyle
timestamp: 2025-10-29T00:15:18.673Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# GroupBoxStyle

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> A type that specifies the appearance and interaction of all group boxes within a view hierarchy.

```swift
@MainActor @preconcurrency protocol GroupBoxStyle
```

## Overview

To configure the current `GroupBoxStyle` for a view hierarchy, use the [groupBoxStyle(_:)](/documentation/swiftui/view/groupboxstyle(_:)) modifier.

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

- [DefaultGroupBoxStyle](/documentation/swiftui/defaultgroupboxstyle)

## Getting built-in group box styles

- [automatic](/documentation/swiftui/groupboxstyle/automatic) The default style for group box views.

## Creating custom group box styles

- [makeBody(configuration:)](/documentation/swiftui/groupboxstyle/makebody(configuration:)) Creates a view representing the body of a group box.
- [GroupBoxStyle.Configuration](/documentation/swiftui/groupboxstyle/configuration) The properties of a group box instance.
- [Body](/documentation/swiftui/groupboxstyle/body) A view that represents the body of a group box.

## Supporting types

- [DefaultGroupBoxStyle](/documentation/swiftui/defaultgroupboxstyle) The default style for group box views.

## Styling groups

- [controlGroupStyle(_:)](/documentation/swiftui/view/controlgroupstyle(_:))
- [ControlGroupStyle](/documentation/swiftui/controlgroupstyle)
- [ControlGroupStyleConfiguration](/documentation/swiftui/controlgroupstyleconfiguration)
- [formStyle(_:)](/documentation/swiftui/view/formstyle(_:))
- [FormStyle](/documentation/swiftui/formstyle)
- [FormStyleConfiguration](/documentation/swiftui/formstyleconfiguration)
- [groupBoxStyle(_:)](/documentation/swiftui/view/groupboxstyle(_:))
- [GroupBoxStyleConfiguration](/documentation/swiftui/groupboxstyleconfiguration)
- [indexViewStyle(_:)](/documentation/swiftui/view/indexviewstyle(_:))
- [IndexViewStyle](/documentation/swiftui/indexviewstyle)
- [labeledContentStyle(_:)](/documentation/swiftui/view/labeledcontentstyle(_:))
- [LabeledContentStyle](/documentation/swiftui/labeledcontentstyle)
- [LabeledContentStyleConfiguration](/documentation/swiftui/labeledcontentstyleconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
