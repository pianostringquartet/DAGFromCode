---
title: automatic
description: The automatic mode.
source: https://developer.apple.com/documentation/swiftui/toolbartitledisplaymode/automatic
timestamp: 2025-10-29T00:11:58.216Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toolbartitledisplaymode](/documentation/swiftui/toolbartitledisplaymode)

**Type Property**

# automatic

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The automatic mode.

```swift
static var automatic: ToolbarTitleDisplayMode { get }
```

## Discussion

For root content in a navigation stack in iOS, iPadOS, or tvOS this behavior will:

- Default to [large](/documentation/swiftui/toolbartitledisplaymode/large) when a navigation title is configured.
- Default to [inline](/documentation/swiftui/toolbartitledisplaymode/inline) when no navigation title is provided.

In all platforms, content pushed onto a navigation stack will use the behavior of the content already on the navigation stack. This has no effect in macOS.

## Getting display modes

- [inline](/documentation/swiftui/toolbartitledisplaymode/inline)
- [inlineLarge](/documentation/swiftui/toolbartitledisplaymode/inlinelarge)
- [large](/documentation/swiftui/toolbartitledisplaymode/large)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
