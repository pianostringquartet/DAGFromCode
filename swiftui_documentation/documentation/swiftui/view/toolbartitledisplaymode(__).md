---
title: toolbarTitleDisplayMode(_:)
description: Configures the toolbar title display mode for this view.
source: https://developer.apple.com/documentation/swiftui/view/toolbartitledisplaymode(_:)
timestamp: 2025-10-29T00:13:18.358Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# toolbarTitleDisplayMode(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Configures the toolbar title display mode for this view.

```swift
nonisolated func toolbarTitleDisplayMode(_ mode: ToolbarTitleDisplayMode) -> some View
```

## Discussion

Use this modifier to override the default toolbar title display mode.

```swift
NavigationStack {
    ContentView()
        .toolbarTitleDisplayMode(.inlineLarge)
}
```

See [Toolbar Title Display Mode](/documentation/swiftui/toolbartitledisplaymode) for more information on the different kinds of display modes. This modifier has no effect on macOS.

## Configuring the toolbar title display mode

- [ToolbarTitleDisplayMode](/documentation/swiftui/toolbartitledisplaymode)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
