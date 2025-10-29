---
title: sceneBridgingOptions
description: The options for which aspects of the window will be managed by this hosting view.
source: https://developer.apple.com/documentation/swiftui/nshostingview/scenebridgingoptions
timestamp: 2025-10-29T00:09:40.083Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nshostingview](/documentation/swiftui/nshostingview)

**Instance Property**

# sceneBridgingOptions

**Available on:** macOS 14.0+

> The options for which aspects of the window will be managed by this hosting view.

```swift
@MainActor @preconcurrency var sceneBridgingOptions: NSHostingSceneBridgingOptions { get set }
```

## Discussion

`NSHostingView` will populate certain aspects of its associated window, depending on which options are specified.

For example, a hosting view can manage its window’s toolbar by including the `.toolbars` option:

```swift
struct RootView: View {
    var body: some View {
        ContentView()
            .toolbar {
                MyToolbarContent()
            }
    }
}

let view = NSHostingView(rootView: RootView())
view.sceneBridgingOptions = [.toolbars]
```

When this hosting view is set as the `contentView` for a window, the default value for this property will be `.all`, which includes the options for `.toolbars` and `.title`. Otherwise, the default value is `[]`.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
