---
title: LabelStyle
description: A type that applies a custom appearance to all labels within a view.
source: https://developer.apple.com/documentation/swiftui/labelstyle
timestamp: 2025-10-29T00:09:52.779Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# LabelStyle

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A type that applies a custom appearance to all labels within a view.

```swift
@MainActor @preconcurrency protocol LabelStyle
```

## Overview

To configure the current label style for a view hierarchy, use the [labelStyle(_:)](/documentation/swiftui/view/labelstyle(_:)) modifier.

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

- [DefaultLabelStyle](/documentation/swiftui/defaultlabelstyle)
- [IconOnlyLabelStyle](/documentation/swiftui/icononlylabelstyle)
- [TitleAndIconLabelStyle](/documentation/swiftui/titleandiconlabelstyle)
- [TitleOnlyLabelStyle](/documentation/swiftui/titleonlylabelstyle)

## Getting built-in label styles

- [automatic](/documentation/swiftui/labelstyle/automatic) A label style that resolves its appearance automatically based on the current context.
- [iconOnly](/documentation/swiftui/labelstyle/icononly) A label style that only displays the icon of the label.
- [titleAndIcon](/documentation/swiftui/labelstyle/titleandicon) A label style that shows both the title and icon of the label using a system-standard layout.
- [titleOnly](/documentation/swiftui/labelstyle/titleonly) A label style that only displays the title of the label.

## Creating custom label styles

- [makeBody(configuration:)](/documentation/swiftui/labelstyle/makebody(configuration:)) Creates a view that represents the body of a label.
- [LabelStyle.Configuration](/documentation/swiftui/labelstyle/configuration) The properties of a label.
- [Body](/documentation/swiftui/labelstyle/body) A view that represents the body of a label.

## Supporting types

- [DefaultLabelStyle](/documentation/swiftui/defaultlabelstyle) The default label style in the current context.
- [IconOnlyLabelStyle](/documentation/swiftui/icononlylabelstyle) A label style that only displays the icon of the label.
- [TitleAndIconLabelStyle](/documentation/swiftui/titleandiconlabelstyle) A label style that shows both the title and icon of the label using a system-standard layout.
- [TitleOnlyLabelStyle](/documentation/swiftui/titleonlylabelstyle) A label style that only displays the title of the label.

## Styling views that display text

- [labelStyle(_:)](/documentation/swiftui/view/labelstyle(_:))
- [LabelStyleConfiguration](/documentation/swiftui/labelstyleconfiguration)
- [textFieldStyle(_:)](/documentation/swiftui/view/textfieldstyle(_:))
- [TextFieldStyle](/documentation/swiftui/textfieldstyle)
- [textEditorStyle(_:)](/documentation/swiftui/view/texteditorstyle(_:))
- [TextEditorStyle](/documentation/swiftui/texteditorstyle)
- [TextEditorStyleConfiguration](/documentation/swiftui/texteditorstyleconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
