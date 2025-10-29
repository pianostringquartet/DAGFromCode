---
title: accessibilityLargeContentViewerEnabled
description: Whether the Large Content Viewer is enabled.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/accessibilitylargecontentviewerenabled
timestamp: 2025-10-29T00:13:28.552Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# accessibilityLargeContentViewerEnabled

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Whether the Large Content Viewer is enabled.

```swift
var accessibilityLargeContentViewerEnabled: Bool { get }
```

## Discussion

The system can automatically provide a large content view with [accessibilityShowsLargeContentViewer()](/documentation/swiftui/view/accessibilityshowslargecontentviewer()) or you can provide your own with [accessibilityShowsLargeContentViewer(_:)](/documentation/swiftui/view/accessibilityshowslargecontentviewer(_:)).

While it is not necessary to check this value before adding a large content view, it may be helpful if you need to adjust the behavior of a gesture. For example, a button with a long press handler might increase its long press duration so the user can read the text in the large content viewer first.

## Enlarging content

- [accessibilityShowsLargeContentViewer()](/documentation/swiftui/view/accessibilityshowslargecontentviewer())
- [accessibilityShowsLargeContentViewer(_:)](/documentation/swiftui/view/accessibilityshowslargecontentviewer(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
