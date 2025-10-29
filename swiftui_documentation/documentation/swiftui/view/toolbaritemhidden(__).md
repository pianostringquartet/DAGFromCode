---
title: toolbarItemHidden(_:)
description: Hides an individual view within a control group toolbar item.
source: https://developer.apple.com/documentation/swiftui/view/toolbaritemhidden(_:)
timestamp: 2025-10-29T00:14:12.350Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# toolbarItemHidden(_:)

**Available on:** macOS 15.0+

> Hides an individual view within a control group toolbar item.

```swift
nonisolated func toolbarItemHidden(_ hidden: Bool = true) -> some View
```

## Parameters

**hidden**

Whether the view in a control group toolbar item is hidden.



## Discussion

Use this modifier to hide individual views of a `ControlGroup` without hiding the entire group. On macOS and iOS, hidden items will be displayed during user customization.

The following example displays a collaboration button in a group when there is an active collaboration session.

```swift
struct ContentView {
    @State private var inCollaboration = false

    var body: some View {
        BrowserView()
            .toolbar(id: "browserToolbar") {
                ToolbarItem(id: "share") {
                    ControlGroup {
                        ShareButton()
                        CollaborationButton()
                            .toolbarItemHidden(!inCollaboration)
                    }
                }
            }
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
