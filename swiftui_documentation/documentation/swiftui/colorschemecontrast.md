---
title: ColorSchemeContrast
description: The contrast between the app’s foreground and background colors.
source: https://developer.apple.com/documentation/swiftui/colorschemecontrast
timestamp: 2025-10-29T00:14:22.905Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# ColorSchemeContrast

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The contrast between the app’s foreground and background colors.

```swift
enum ColorSchemeContrast
```

## Overview

You receive a contrast value when you read the [color Scheme Contrast](/documentation/swiftui/environmentvalues/colorschemecontrast) environment value. The value tells you if a standard or increased contrast currently applies to the view. SwiftUI updates the value whenever the contrast changes, and redraws views that depend on the value. For example, the following [Text](/documentation/swiftui/text) view automatically updates when the user enables increased contrast:

```swift
@Environment(\.colorSchemeContrast) private var colorSchemeContrast

var body: some View {
    Text(colorSchemeContrast == .standard ? "Standard" : "Increased")
}
```

The user sets the contrast by selecting the Increase Contrast option in Accessibility > Display in System Preferences on macOS, or Accessibility > Display & Text Size in the Settings app on iOS. Your app can’t override the user’s choice. For information about using color and contrast in your app, see [accessibility#Color-and](/design/Human-Interface-Guidelines/accessibility) in the Human Interface Guidelines.

## Conforms To

- [CaseIterable](/documentation/Swift/CaseIterable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting contrast options

- [ColorSchemeContrast.standard](/documentation/swiftui/colorschemecontrast/standard) SwiftUI displays views with standard contrast between the app’s foreground and background colors.
- [ColorSchemeContrast.increased](/documentation/swiftui/colorschemecontrast/increased) SwiftUI displays views with increased contrast between the app’s foreground and background colors.

## Creating a color scheme contrast

- [init(_:)](/documentation/swiftui/colorschemecontrast/init(_:)) Creates a contrast from its accessibility contrast equivalent.

## Getting the color scheme contrast

- [colorSchemeContrast](/documentation/swiftui/environmentvalues/colorschemecontrast)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
