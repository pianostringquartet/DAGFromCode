---
title: windowToolbarLabelStyle(_:)
description: Sets the label style of items in a toolbar and enables user customization.
source: https://developer.apple.com/documentation/swiftui/scene/windowtoolbarlabelstyle(_:)
timestamp: 2025-10-29T00:11:49.612Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# windowToolbarLabelStyle(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Sets the label style of items in a toolbar and enables user customization.

```swift
nonisolated func windowToolbarLabelStyle(_ toolbarLabelStyle: Binding<ToolbarLabelStyle>) -> some Scene
```

## Parameters

**toolbarLabelStyle**

The label style to apply.



## Discussion

Use this modifier to bind a [Toolbar Label Style](/documentation/swiftui/toolbarlabelstyle) to [App Storage](/documentation/swiftui/appstorage). The toolbar will default to the label style specified but will also be user configurable.

```swift
    @main
    struct MyApp: App {
        @AppStorage("ToolbarLabelStyle")
        private var labelStyle: ToolbarLabelStyle = .iconOnly

        var body: some Scene {
            WindowGroup {
                ContentView()
                    .toolbar(id: "browserToolbar") {
                        ...
                    }
            }
            .windowToolbarLabelStyle($labelStyle)
        }
    }
```

## Styling the associated toolbar

- [windowToolbarStyle(_:)](/documentation/swiftui/scene/windowtoolbarstyle(_:))
- [windowToolbarLabelStyle(fixed:)](/documentation/swiftui/scene/windowtoolbarlabelstyle(fixed:))
- [WindowToolbarStyle](/documentation/swiftui/windowtoolbarstyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
