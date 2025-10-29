---
title: containerBackgroundRemovable(_:)
description: A modifier that marks the background of a widget as removable.
source: https://developer.apple.com/documentation/swiftui/widgetconfiguration/containerbackgroundremovable(_:)
timestamp: 2025-10-29T00:13:54.542Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [widgetconfiguration](/documentation/swiftui/widgetconfiguration)

**Instance Method**

# containerBackgroundRemovable(_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, visionOS 26.0+, watchOS 9.0+

> A modifier that marks the background of a widget as removable.

```swift
@MainActor @preconcurrency func containerBackgroundRemovable(_ isRemovable: Bool = true) -> some WidgetConfiguration
```

## Parameters

**isRemovable**

If `true`, the widget supports removal of the container background in contexts that prefer no backgrounds. If `false`, the system doesn’t remove the background.



## Return Value

A modified widget configuration.

## Discussion

In most cases, mark the background container of a widget as removable to allow people to place the widget in as many contexts as possible. If you mark the background as nonremovable, the widget becomes ineligible in various contexts that require a removable background. For example, a small widget without a removable background doesn’t appear in the widget gallery on the iPad Lock Screen.

If you mark a background as nonremovable, the system always displays the background container of the widget. Note that the background may render differently; for example, it can appear faded or desaturated.

This modifier has no effect on operation system versions prior to iOS 17, watchOS 10, or macOS 14.

## Setting the appearance

- [supportedFamilies(_:)](/documentation/swiftui/widgetconfiguration/supportedfamilies(_:))
- [contentMarginsDisabled()](/documentation/swiftui/widgetconfiguration/contentmarginsdisabled())
- [disfavoredLocations(_:for:)](/documentation/swiftui/widgetconfiguration/disfavoredlocations(_:for:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
