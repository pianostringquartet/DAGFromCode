---
title: ToolbarTitleDisplayMode
description: A type that defines the behavior of title of a toolbar.
source: https://developer.apple.com/documentation/swiftui/toolbartitledisplaymode
timestamp: 2025-10-29T00:11:26.516Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ToolbarTitleDisplayMode

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A type that defines the behavior of title of a toolbar.

```swift
struct ToolbarTitleDisplayMode
```

## Overview

Use the [toolbarTitleDisplayMode(_:)](/documentation/swiftui/view/toolbartitledisplaymode(_:)) modifier to configure the title display behavior of your toolbar:

```swift
NavigationStack {
    ContentView()
        .toolbarTitleDisplayMode(.inlineLarge)
}
```

## Getting display modes

- [automatic](/documentation/swiftui/toolbartitledisplaymode/automatic) The automatic mode.
- [inline](/documentation/swiftui/toolbartitledisplaymode/inline) The inline mode.
- [inlineLarge](/documentation/swiftui/toolbartitledisplaymode/inlinelarge) The inline large mode.
- [large](/documentation/swiftui/toolbartitledisplaymode/large) The large mode.

## Configuring the toolbar title display mode

- [toolbarTitleDisplayMode(_:)](/documentation/swiftui/view/toolbartitledisplaymode(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
