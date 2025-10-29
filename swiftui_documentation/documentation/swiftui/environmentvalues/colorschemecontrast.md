---
title: colorSchemeContrast
description: The contrast associated with the color scheme of this environment.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/colorschemecontrast
timestamp: 2025-10-29T00:12:18.242Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# colorSchemeContrast

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The contrast associated with the color scheme of this environment.

```swift
var colorSchemeContrast: ColorSchemeContrast { get }
```

## Discussion

Read this environment value from within a view to find out if SwiftUI is currently displaying the view using [standard](/documentation/swiftui/colorschemecontrast/standard) or [increased](/documentation/swiftui/colorschemecontrast/increased) contrast. The value that you read depends entirely on user settings, and you can’t change it.

```swift
@Environment(\.colorSchemeContrast) private var colorSchemeContrast

var body: some View {
    Text(colorSchemeContrast == .standard ? "Standard" : "Increased")
}
```

When adjusting your app’s user interface to match the contrast, consider also checking the [color Scheme](/documentation/swiftui/environmentvalues/colorscheme) property to find out if SwiftUI is displaying the view with a light or dark appearance. For information, see [accessibility#Color-and](/design/Human-Interface-Guidelines/accessibility) in the Human Interface Guidelines.

> [!NOTE]
> If you only need to provide different colors or images for different color scheme and contrast settings, do that in your app’s Asset Catalog. See [asset](/documentation/Xcode/asset-management).

## Getting the color scheme contrast

- [ColorSchemeContrast](/documentation/swiftui/colorschemecontrast)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
