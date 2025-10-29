---
title: hidden(_:)
description: Hides a toolbar item within its toolbar.
source: https://developer.apple.com/documentation/swiftui/customizabletoolbarcontent/hidden(_:)
timestamp: 2025-10-29T00:09:24.838Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [customizabletoolbarcontent](/documentation/swiftui/customizabletoolbarcontent)

**Instance Method**

# hidden(_:)

**Available on:** macOS 15.0+

> Hides a toolbar item within its toolbar.

```swift
nonisolated func hidden(_ hidden: Bool = true) -> some CustomizableToolbarContent
```

## Parameters

**hidden**

Whether the toolbar item is hidden.



## Discussion

Use this modifier to conditionally display a toolbar item in its toolbar. On macOS and iOS, hidden items will be displayed during user customization.

The following example hides a downloads button when there are no downloads, but it is displayed during customization.

```swift
struct ContentView {
    @State private var showDownloads = false

    var body: some View {
        BrowserView()
            .toolbar(id: "browserToolbar") {
                ToolbarItem(id: "downloads") {
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
