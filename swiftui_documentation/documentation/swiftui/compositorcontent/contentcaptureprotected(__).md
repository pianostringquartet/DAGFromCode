---
title: contentCaptureProtected(_:)
description: Marks the view as a view that activates content protection during scene capture events, such as screenshots, screen recordings, screensharing, etc.
source: https://developer.apple.com/documentation/swiftui/compositorcontent/contentcaptureprotected(_:)
timestamp: 2025-10-29T00:09:18.423Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [compositorcontent](/documentation/swiftui/compositorcontent)

**Instance Method**

# contentCaptureProtected(_:)

**Available on:** macOS 26.0+, visionOS 26.0+

> Marks the view as a view that activates content protection during scene capture events, such as screenshots, screen recordings, screensharing, etc.

```swift
nonisolated func contentCaptureProtected(_ isActive: Bool = true) -> some CompositorContent
```

## Parameters

**isActive**

A Boolean value that specifies whether this view is protected when present on screen during scene capture.



## Discussion

On visionOS, the system redacts the entire screen when a view marked with this modifier is present on screen, scene capture is active, and the app has the App Protected Content entitlement, available through the Apple Developer Enterprise Program.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
