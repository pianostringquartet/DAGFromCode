---
title: sceneBridgingOptions
description: The options for which aspects of the window will be managed by this controller’s hosting view.
source: https://developer.apple.com/documentation/swiftui/nshostingcontroller/scenebridgingoptions
timestamp: 2025-10-29T00:10:52.032Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [nshostingcontroller](/documentation/swiftui/nshostingcontroller)

**Instance Property**

# sceneBridgingOptions

**Available on:** macOS 14.0+

> The options for which aspects of the window will be managed by this controller’s hosting view.

```swift
@MainActor @preconcurrency var sceneBridgingOptions: NSHostingSceneBridgingOptions { get set }
```

## Discussion

`NSHostingController` will populate certain aspects of its associated window, depending on which options are specified.

For example, a hosting controller can manage its window’s toolbar by including the `.toolbars` option:

```swift
struct RootView: View {
    var body: some View {
        ContentView()
            .toolbar {
                MyToolbarContent()
            }
    }
}

let controller = NSHostingController(rootView: RootView())
controller.sceneBridgingOptions = [.toolbars]
```

When this hosting controller is set as the `contentViewController` for a window, the default value for this property will be `.all`, which includes the options for `.toolbars` and `.title`. Otherwise, the default value is `[]`.

## Configuring the controller

- [sizeThatFits(in:)](/documentation/swiftui/nshostingcontroller/sizethatfits(in:))
- [preferredContentSize](/documentation/swiftui/nshostingcontroller/preferredcontentsize)
- [sizingOptions](/documentation/swiftui/nshostingcontroller/sizingoptions)
- [safeAreaRegions](/documentation/swiftui/nshostingcontroller/safearearegions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
