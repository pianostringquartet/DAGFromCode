---
title: colorScheme
description: The color scheme of this environment.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/colorscheme
timestamp: 2025-10-29T00:11:52.366Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# colorScheme

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The color scheme of this environment.

```swift
var colorScheme: ColorScheme { get set }
```

## Discussion

Read this environment value from within a view to find out if SwiftUI is currently displaying the view using the [light](/documentation/swiftui/colorscheme/light) or [dark](/documentation/swiftui/colorscheme/dark) appearance. The value that you receive depends on whether the user has enabled Dark Mode, possibly superseded by the configuration of the current presentation’s view hierarchy.

```swift
@Environment(\.colorScheme) private var colorScheme

var body: some View {
    Text(colorScheme == .dark ? "Dark" : "Light")
}
```

You can set the `colorScheme` environment value directly, but that usually isn’t what you want. Doing so changes the color scheme of the given view and its child views but *not* the views above it in the view hierarchy. Instead, set a color scheme using the [preferredColorScheme(_:)](/documentation/swiftui/view/preferredcolorscheme(_:)) modifier, which also propagates the value up through the view hierarchy to the enclosing presentation, like a sheet or a window.

When adjusting your app’s user interface to match the color scheme, consider also checking the [color Scheme Contrast](/documentation/swiftui/environmentvalues/colorschemecontrast) property, which reflects a system-wide contrast setting that the user controls. For information, see [accessibility#Color-and](/design/Human-Interface-Guidelines/accessibility) in the Human Interface Guidelines.

> [!NOTE]
> If you only need to provide different colors or images for different color scheme and contrast settings, do that in your app’s Asset Catalog. See [asset](/documentation/Xcode/asset-management).

## Detecting and requesting the light or dark appearance

- [preferredColorScheme(_:)](/documentation/swiftui/view/preferredcolorscheme(_:))
- [ColorScheme](/documentation/swiftui/colorscheme)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
