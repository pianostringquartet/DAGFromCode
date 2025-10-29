---
title: pushHandler(_:)
description: Register a type that can handle push tokens changing for widgets.
source: https://developer.apple.com/documentation/swiftui/widgetconfiguration/pushhandler(_:)
timestamp: 2025-10-29T00:13:17.831Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [widgetconfiguration](/documentation/swiftui/widgetconfiguration)

**Instance Method**

# pushHandler(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Register a type that can handle push tokens changing for widgets.

```swift
@MainActor @preconcurrency func pushHandler(_ pushHandlerType: any WidgetPushHandler.Type) -> some WidgetConfiguration
```

## Parameters

**pushHandlerType**

The type of the object that can handle push tokens you use to update the widget with push notifications.



## Overview

Use this to opt this widget into supporting updates via push notifications.

If you have multiple widget configurations, you can choose to use the same push handler type for those widget configurations.

When the push configuration of your widgets changes, each unique handler type will be instantiated and [pushTokenDidChange(_:widgets:)](/documentation/WidgetKit/WidgetPushHandler/pushTokenDidChange(_:widgets:)) will be called.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
