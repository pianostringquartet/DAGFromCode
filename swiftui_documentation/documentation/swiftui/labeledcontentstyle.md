---
title: LabeledContentStyle
description: The appearance and behavior of a labeled content instance..
source: https://developer.apple.com/documentation/swiftui/labeledcontentstyle
timestamp: 2025-10-29T00:13:00.747Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# LabeledContentStyle

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The appearance and behavior of a labeled content instance..

```swift
@MainActor @preconcurrency protocol LabeledContentStyle
```

## Overview

Use [labeledContentStyle(_:)](/documentation/swiftui/view/labeledcontentstyle(_:)) to set a style on a view.

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

- [AutomaticLabeledContentStyle](/documentation/swiftui/automaticlabeledcontentstyle)

## Getting built-in labeled content styles

- [automatic](/documentation/swiftui/labeledcontentstyle/automatic) A labeled content style that resolves its appearance automatically based on the current context.

## Creating custom labeled content styles

- [makeBody(configuration:)](/documentation/swiftui/labeledcontentstyle/makebody(configuration:)) Creates a view that represents the body of labeled content.
- [LabeledContentStyle.Configuration](/documentation/swiftui/labeledcontentstyle/configuration) The properties of a labeled content instance.
- [Body](/documentation/swiftui/labeledcontentstyle/body) A view that represents the appearance and behavior of labeled content.

## Supporting types

- [AutomaticLabeledContentStyle](/documentation/swiftui/automaticlabeledcontentstyle) The default labeled content style.

## Styling groups

- [controlGroupStyle(_:)](/documentation/swiftui/view/controlgroupstyle(_:))
- [ControlGroupStyle](/documentation/swiftui/controlgroupstyle)
- [ControlGroupStyleConfiguration](/documentation/swiftui/controlgroupstyleconfiguration)
- [formStyle(_:)](/documentation/swiftui/view/formstyle(_:))
- [FormStyle](/documentation/swiftui/formstyle)
- [FormStyleConfiguration](/documentation/swiftui/formstyleconfiguration)
- [groupBoxStyle(_:)](/documentation/swiftui/view/groupboxstyle(_:))
- [GroupBoxStyle](/documentation/swiftui/groupboxstyle)
- [GroupBoxStyleConfiguration](/documentation/swiftui/groupboxstyleconfiguration)
- [indexViewStyle(_:)](/documentation/swiftui/view/indexviewstyle(_:))
- [IndexViewStyle](/documentation/swiftui/indexviewstyle)
- [labeledContentStyle(_:)](/documentation/swiftui/view/labeledcontentstyle(_:))
- [LabeledContentStyleConfiguration](/documentation/swiftui/labeledcontentstyleconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
