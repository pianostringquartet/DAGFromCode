---
title: accentColor
description: A color that reflects the accent color of the system or app.
source: https://developer.apple.com/documentation/swiftui/color/accentcolor
timestamp: 2025-10-29T00:11:24.987Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [color](/documentation/swiftui/color)

**Type Property**

# accentColor

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A color that reflects the accent color of the system or app.

```swift
static var accentColor: Color { get }
```

## Discussion

The accent color is a broad theme color applied to views and controls. You can set it at the application level by specifying an accent color in your app’s asset catalog.

> [!NOTE]
> In macOS, SwiftUI applies customization of the accent color only if the user chooses Multicolor under General > Accent color in System Preferences.

The following code renders a [Text](/documentation/swiftui/text) view using the app’s accent color:

```swift
Text("Accent Color")
    .foregroundStyle(Color.accentColor)
```

## Getting semantic colors

- [primary](/documentation/swiftui/color/primary)
- [secondary](/documentation/swiftui/color/secondary)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
