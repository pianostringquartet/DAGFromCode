---
title: ToolbarLabelStyle
description: The label style of a toolbar.
source: https://developer.apple.com/documentation/swiftui/toolbarlabelstyle
timestamp: 2025-10-29T00:09:22.947Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ToolbarLabelStyle

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> The label style of a toolbar.

```swift
struct ToolbarLabelStyle
```

## Overview

Use this type in conjunction with modifiers like [windowToolbarLabelStyle(fixed:)](/documentation/swiftui/scene/windowtoolbarlabelstyle(fixed:)) and [windowToolbarLabelStyle(_:)](/documentation/swiftui/scene/windowtoolbarlabelstyle(_:)) to customize the appearance of window toolbars managed by SwiftUI.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Type Properties

- [automatic](/documentation/swiftui/toolbarlabelstyle/automatic) The automatic label style. The toolbar will use a labelStyle that best fits the  it is applied to.
- [iconOnly](/documentation/swiftui/toolbarlabelstyle/icononly) The icon only label style. The toolbar contents will only display the control
- [titleAndIcon](/documentation/swiftui/toolbarlabelstyle/titleandicon) The title and icon label style. The toolbar contents will display both a control and title
- [titleOnly](/documentation/swiftui/toolbarlabelstyle/titleonly) The title only label style. The toolbar contents will only display the title

## Styling a toolbar

- [toolbarBackground(_:for:)](/documentation/swiftui/view/toolbarbackground(_:for:))
- [toolbarColorScheme(_:for:)](/documentation/swiftui/view/toolbarcolorscheme(_:for:))
- [toolbarForegroundStyle(_:for:)](/documentation/swiftui/view/toolbarforegroundstyle(_:for:))
- [windowToolbarStyle(_:)](/documentation/swiftui/scene/windowtoolbarstyle(_:))
- [WindowToolbarStyle](/documentation/swiftui/windowtoolbarstyle)
- [toolbarLabelStyle](/documentation/swiftui/environmentvalues/toolbarlabelstyle)
- [SpacerSizing](/documentation/swiftui/spacersizing)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
