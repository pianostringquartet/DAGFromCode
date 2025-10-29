---
title: windowToolbarLabelStyle(fixed:)
description: Sets the label style of items in a toolbar.
source: https://developer.apple.com/documentation/swiftui/scene/windowtoolbarlabelstyle(fixed:)
timestamp: 2025-10-29T00:15:21.347Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# windowToolbarLabelStyle(fixed:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Sets the label style of items in a toolbar.

```swift
nonisolated func windowToolbarLabelStyle(fixed: ToolbarLabelStyle) -> some Scene
```

## Discussion

Use this modifier to set a static [Toolbar Label Style](/documentation/swiftui/toolbarlabelstyle) the toolbar should use. The style will not be configurable by the user.

```swift
    @main
    struct MyApp: App {
        var body: some Scene {
            WindowGroup {
                ContentView()
                    .toolbar(id: "browserToolbar") {
                        ...
                    }
            }
            .windowToolbarLabelStyle(fixed: .iconOnly)
        }
    }
```

## Styling the associated toolbar

- [windowToolbarStyle(_:)](/documentation/swiftui/scene/windowtoolbarstyle(_:))
- [windowToolbarLabelStyle(_:)](/documentation/swiftui/scene/windowtoolbarlabelstyle(_:))
- [WindowToolbarStyle](/documentation/swiftui/windowtoolbarstyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
