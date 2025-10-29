---
title: widgetURL(_:)
description: Sets the URL to open in the containing app when the user clicks the widget.
source: https://developer.apple.com/documentation/swiftui/view/widgeturl(_:)
timestamp: 2025-10-29T00:12:11.835Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# widgetURL(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 26.0+, watchOS 9.0+

> Sets the URL to open in the containing app when the user clicks the widget.

```swift
@MainActor @preconcurrency func widgetURL(_ url: URL?) -> some View
```

## Parameters

**url**

The URL to open in the containing app.



## Return Value

A view that opens the specified URL when the user clicks the widget.

## Discussion

Widgets support one `widgetURL` modifier in their view hierarchy. If multiple views have `widgetURL` modifiers, the behavior is undefined.

## URLs

- [onOpenURL(perform:)](/documentation/swiftui/view/onopenurl(perform:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
