---
title: accessibilityShowsLargeContentViewer()
description: Adds a default large content view to be shown by the large content viewer.
source: https://developer.apple.com/documentation/swiftui/view/accessibilityshowslargecontentviewer()
timestamp: 2025-10-29T00:09:52.378Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibilityShowsLargeContentViewer()

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Adds a default large content view to be shown by the large content viewer.

```swift
nonisolated func accessibilityShowsLargeContentViewer() -> some View
```

## Discussion

Rely on the large content viewer only in situations where items must remain small due to unavoidable design constraints. For example, buttons in a tab bar remain small to leave more room for the main app content.

The following example shows how to add a custom large content view:

```swift
var body: some View {
    Button("New Message", action: newMessage)
        .accessibilityShowsLargeContentViewer()
}
```

Don’t use the large content viewer as a replacement for proper Dynamic Type support. For example, Dynamic Type allows items in a list to grow or shrink vertically to accommodate the user’s preferred font size. Rely on the large content viewer only in situations where items must remain small due to unavoidable design constraints.

For example, views that have their Dynamic Type size constrained with [dynamicTypeSize(_:)](/documentation/swiftui/view/dynamictypesize(_:)) may require a large content view.

## Enlarging content

- [accessibilityShowsLargeContentViewer(_:)](/documentation/swiftui/view/accessibilityshowslargecontentviewer(_:))
- [accessibilityLargeContentViewerEnabled](/documentation/swiftui/environmentvalues/accessibilitylargecontentviewerenabled)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
