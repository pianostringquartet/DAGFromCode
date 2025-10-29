---
title: appearsActive
description: Whether views and styles in this environment should prefer an active appearance over an inactive appearance.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/appearsactive
timestamp: 2025-10-29T00:10:39.073Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# appearsActive

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 10.15+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Whether views and styles in this environment should prefer an active appearance over an inactive appearance.

```swift
@backDeployed(before: macOS 15.0)
var appearsActive: Bool { get set }
```

## Discussion

On macOS, views in the focused window (also referred to as the “key” window) should appear active. Some contexts also appear active in other circumstances, such as the contents of a window toolbar appearing active when the window is not focused but is the main window.

Typical adjustments made when a view does not appear active include:

- Uses of `Color.accentColor` should generally be removed or replaced with a desaturated style.
- Text and image content in sidebars should appear dimmer.
- Buttons with destructive actions should appear disabled.
- `ShapeStyle.selection` and selection in list and tables will automatically become a grey color

Custom views, styles, and shape styles can use this to adjust their own appearance:

```swift
struct ProminentPillButtonStyle: ButtonStyle {
    @Environment(\.appearsActive) private var appearsActive

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .lineLimit(1)
            .padding(.horizontal, 8)
            .padding(.vertical, 2)
            .frame(minHeight: 20)
            .overlay(Capsule().strokeBorder(.tertiary))
            .background(appearsActive ? Color.accentColor : .clear, in: .capsule)
            .contentShape(.capsule)
    }
}
```

On all other platforms, this value is always `true`.

This is bridged with `UITraitCollection.activeAppearance` for UIKit hosted content.

## Display characteristics

- [colorScheme](/documentation/swiftui/environmentvalues/colorscheme)
- [colorSchemeContrast](/documentation/swiftui/environmentvalues/colorschemecontrast)
- [displayScale](/documentation/swiftui/environmentvalues/displayscale)
- [horizontalSizeClass](/documentation/swiftui/environmentvalues/horizontalsizeclass)
- [imageScale](/documentation/swiftui/environmentvalues/imagescale)
- [pixelLength](/documentation/swiftui/environmentvalues/pixellength)
- [sidebarRowSize](/documentation/swiftui/environmentvalues/sidebarrowsize)
- [verticalSizeClass](/documentation/swiftui/environmentvalues/verticalsizeclass)
- [immersiveSpaceDisplacement](/documentation/swiftui/environmentvalues/immersivespacedisplacement)
- [labelsVisibility](/documentation/swiftui/environmentvalues/labelsvisibility)
- [materialActiveAppearance](/documentation/swiftui/environmentvalues/materialactiveappearance)
- [TabBarPlacement](/documentation/swiftui/tabbarplacement)
- [toolbarLabelStyle](/documentation/swiftui/environmentvalues/toolbarlabelstyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
