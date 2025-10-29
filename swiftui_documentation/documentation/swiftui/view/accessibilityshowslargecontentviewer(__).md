---
title: accessibilityShowsLargeContentViewer(_:)
description: Adds a custom large content view to be shown by the large content viewer.
source: https://developer.apple.com/documentation/swiftui/view/accessibilityshowslargecontentviewer(_:)
timestamp: 2025-10-29T00:11:47.539Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibilityShowsLargeContentViewer(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Adds a custom large content view to be shown by the large content viewer.

```swift
nonisolated func accessibilityShowsLargeContentViewer<V>(@ViewBuilder _ largeContentView: () -> V) -> some View where V : View
```

## Discussion

Rely on the large content viewer only in situations where items must remain small due to unavoidable design constraints. For example, buttons in a tab bar remain small to leave more room for the main app content.

The following example shows how to add a custom large content view:

```swift
var body: some View {
    Button(action: newMessage) {
        Image(systemName: "plus")
    }
    .accessibilityShowsLargeContentViewer {
        Label("New Message", systemImage: "plus")
    }
}
```

Don’t use the large content viewer as a replacement for proper Dynamic Type support. For example, Dynamic Type allows items in a list to grow or shrink vertically to accommodate the user’s preferred font size. Rely on the large content viewer only in situations where items must remain small due to unavoidable design constraints.

For example, views that have their Dynamic Type size constrained with [dynamicTypeSize(_:)](/documentation/swiftui/view/dynamictypesize(_:)) may require a large content view.

## Enlarging content

- [accessibilityShowsLargeContentViewer()](/documentation/swiftui/view/accessibilityshowslargecontentviewer())
- [accessibilityLargeContentViewerEnabled](/documentation/swiftui/environmentvalues/accessibilitylargecontentviewerenabled)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
