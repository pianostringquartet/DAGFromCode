---
title: body
description: The content and behavior of the control.
source: https://developer.apple.com/documentation/swiftui/controlwidget/body-swift.property
timestamp: 2025-10-29T00:12:50.038Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [controlwidget](/documentation/swiftui/controlwidget)

**Instance Property**

# body

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 26.0+, watchOS 26.0+

> The content and behavior of the control.

```swift
@ControlWidgetConfigurationBuilder @MainActor @preconcurrency var body: Self.Body { get }
```

## Discussion

For any controls that you create, provide a computed `body` property that defines the control using some control widget configuration.

Swift infers the control’s [Body-swift.associatedtype](/documentation/swiftui/controlwidget/body-swift.associatedtype) associated type based on the contents of the `body` property.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
