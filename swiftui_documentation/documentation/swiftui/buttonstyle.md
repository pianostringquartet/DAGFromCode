---
title: ButtonStyle
description: A type that applies standard interaction behavior and a custom appearance to all buttons within a view hierarchy.
source: https://developer.apple.com/documentation/swiftui/buttonstyle
timestamp: 2025-10-29T00:13:15.954Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# ButtonStyle

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A type that applies standard interaction behavior and a custom appearance to all buttons within a view hierarchy.

```swift
@MainActor @preconcurrency protocol ButtonStyle
```

## Overview

To configure the current button style for a view hierarchy, use the [buttonStyle(_:)](/documentation/swiftui/view/buttonstyle(_:)) modifier. Specify a style that conforms to `ButtonStyle` when creating a button that uses the standard button interaction behavior defined for each platform. To create a button with custom interaction behavior, use [Primitive Button Style](/documentation/swiftui/primitivebuttonstyle) instead.

## Custom button styles

- [makeBody(configuration:)](/documentation/swiftui/buttonstyle/makebody(configuration:)) Creates a view that represents the body of a button.
- [ButtonStyle.Configuration](/documentation/swiftui/buttonstyle/configuration) The properties of a button.
- [Body](/documentation/swiftui/buttonstyle/body) A view that represents the body of a button.

## Styling buttons

- [buttonStyle(_:)](/documentation/swiftui/view/buttonstyle(_:))
- [ButtonStyleConfiguration](/documentation/swiftui/buttonstyleconfiguration)
- [PrimitiveButtonStyle](/documentation/swiftui/primitivebuttonstyle)
- [PrimitiveButtonStyleConfiguration](/documentation/swiftui/primitivebuttonstyleconfiguration)
- [signInWithAppleButtonStyle(_:)](/documentation/swiftui/view/signinwithapplebuttonstyle(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
