---
title: pushHandler(_:)
description: Register a type that can handle push tokens changing for controls of this type.
source: https://developer.apple.com/documentation/swiftui/controlwidgetconfiguration/pushhandler(_:)
timestamp: 2025-10-29T00:12:58.923Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [controlwidgetconfiguration](/documentation/swiftui/controlwidgetconfiguration)

**Instance Method**

# pushHandler(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 26.0+, watchOS 26.0+

> Register a type that can handle push tokens changing for controls of this type.

```swift
@MainActor @preconcurrency func pushHandler(_ pushHandlerType: any ControlPushHandler.Type) -> some ControlWidgetConfiguration
```

## Parameters

**pushHandlerType**

The type of the object that can handle push tokens you use to update the control with push notifications.



## Overview

Use this to opt your control into using push notifications.

If you have multiple control types, you can choose to use the same push handler type for those control types.

When the push configuration of your controls changes, each handler type will be instantiated and [pushTokensDidChange(controls:)](/documentation/WidgetKit/ControlPushHandler/pushTokensDidChange(controls:)) will be called.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
