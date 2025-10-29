---
title: hidden(_:)
description: Hides a toolbar item within its toolbar.
source: https://developer.apple.com/documentation/swiftui/toolbarcontent/hidden(_:)
timestamp: 2025-10-29T00:14:34.269Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toolbarcontent](/documentation/swiftui/toolbarcontent)

**Instance Method**

# hidden(_:)

**Available on:** macOS 15.0+

> Hides a toolbar item within its toolbar.

```swift
nonisolated func hidden(_ hidden: Bool = true) -> some ToolbarContent
```

## Parameters

**hidden**

Whether the toolbar item is hidden.



## Discussion

Use this modifier to conditionally display a toolbar item in its toolbar.

```swift
struct ContentView {
    @State private var showDownloads = false

    var body: some View {
        BrowserView()
            .toolbar {
                ToolbarItem {
                    DownloadsButton()
                }
                .hidden(!showDownloads)
            }
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
