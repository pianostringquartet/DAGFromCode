---
title: ColorScheme
description: The possible color schemes, corresponding to the light and dark appearances.
source: https://developer.apple.com/documentation/swiftui/colorscheme
timestamp: 2025-10-29T00:10:21.443Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# ColorScheme

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The possible color schemes, corresponding to the light and dark appearances.

```swift
enum ColorScheme
```

## Overview

You receive a color scheme value when you read the [color Scheme](/documentation/swiftui/environmentvalues/colorscheme) environment value. The value tells you if a light or dark appearance currently applies to the view. SwiftUI updates the value whenever the appearance changes, and redraws views that depend on the value. For example, the following [Text](/documentation/swiftui/text) view automatically updates when the user enables Dark Mode:

```swift
@Environment(\.colorScheme) private var colorScheme

var body: some View {
    Text(colorScheme == .dark ? "Dark" : "Light")
}
```

Set a preferred appearance for a particular view hierarchy to override the user’s Dark Mode setting using the [preferredColorScheme(_:)](/documentation/swiftui/view/preferredcolorscheme(_:)) view modifier.

## Conforms To

- [CaseIterable](/documentation/Swift/CaseIterable)
- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting color schemes

- [ColorScheme.light](/documentation/swiftui/colorscheme/light) The color scheme that corresponds to a light appearance.
- [ColorScheme.dark](/documentation/swiftui/colorscheme/dark) The color scheme that corresponds to a dark appearance.

## Creating a color scheme

- [init(_:)](/documentation/swiftui/colorscheme/init(_:)) Creates a color scheme from its user interface style equivalent.

## Supporting types

- [PreferredColorSchemeKey](/documentation/swiftui/preferredcolorschemekey) A key for specifying the preferred color scheme.

## Detecting and requesting the light or dark appearance

- [preferredColorScheme(_:)](/documentation/swiftui/view/preferredcolorscheme(_:))
- [colorScheme](/documentation/swiftui/environmentvalues/colorscheme)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
