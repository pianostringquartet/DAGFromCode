---
title: contentMarginsDisabled()
description: Disable default content margins.
source: https://developer.apple.com/documentation/swiftui/widgetconfiguration/contentmarginsdisabled()
timestamp: 2025-10-29T00:12:13.929Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [widgetconfiguration](/documentation/swiftui/widgetconfiguration)

**Instance Method**

# contentMarginsDisabled()

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, visionOS 26.0+, watchOS 9.0+

> Disable default content margins.

```swift
@MainActor @preconcurrency func contentMarginsDisabled() -> some WidgetConfiguration
```

## Return Value

A modified widget configuration that doesn’t use default content margins.

## Discussion

When you disable content margins for a widget, the system doesn’t automatically add margins around the widget’s content, and you are responsible for specifying margins and padding around your widget content for each context. To specify custom margins, use [widget Content Margins](/documentation/SwiftUI/EnvironmentValues/widgetContentMargins) in combination with doc://com.apple.documentation/swiftui/View/padding(_) to selectively or partially apply the default content margins.

This modifier has no effect on operation system versions prior to iOS 17, watchOS 10, or macOS 14.

## Setting the appearance

- [supportedFamilies(_:)](/documentation/swiftui/widgetconfiguration/supportedfamilies(_:))
- [disfavoredLocations(_:for:)](/documentation/swiftui/widgetconfiguration/disfavoredlocations(_:for:))
- [containerBackgroundRemovable(_:)](/documentation/swiftui/widgetconfiguration/containerbackgroundremovable(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
