---
title: WindowToolbarStyle
description: A specification for the appearance and behavior of a window’s toolbar.
source: https://developer.apple.com/documentation/swiftui/windowtoolbarstyle
timestamp: 2025-10-29T00:14:25.681Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# WindowToolbarStyle

**Available on:** macOS 11.0+

> A specification for the appearance and behavior of a window’s toolbar.

```swift
protocol WindowToolbarStyle
```

## Conforming Types

- [DefaultWindowToolbarStyle](/documentation/swiftui/defaultwindowtoolbarstyle)
- [ExpandedWindowToolbarStyle](/documentation/swiftui/expandedwindowtoolbarstyle)
- [UnifiedCompactWindowToolbarStyle](/documentation/swiftui/unifiedcompactwindowtoolbarstyle)
- [UnifiedWindowToolbarStyle](/documentation/swiftui/unifiedwindowtoolbarstyle)

## Getting built-in window toolbar styles

- [automatic](/documentation/swiftui/windowtoolbarstyle/automatic) The automatic window toolbar style.
- [expanded](/documentation/swiftui/windowtoolbarstyle/expanded) A window toolbar style which displays its title bar area above the toolbar.
- [unified](/documentation/swiftui/windowtoolbarstyle/unified) A window toolbar style which displays its toolbar and title bar inline.
- [unified(showsTitle:)](/documentation/swiftui/windowtoolbarstyle/unified(showstitle:)) A window toolbar style which displays its toolbar and title bar inline.
- [unifiedCompact](/documentation/swiftui/windowtoolbarstyle/unifiedcompact) A window toolbar style similar to , but with a more compact vertical sizing.
- [unifiedCompact(showsTitle:)](/documentation/swiftui/windowtoolbarstyle/unifiedcompact(showstitle:)) A window toolbar style similar to , but with a more compact vertical sizing.

## Supporting types

- [DefaultWindowToolbarStyle](/documentation/swiftui/defaultwindowtoolbarstyle) The default window toolbar style.
- [ExpandedWindowToolbarStyle](/documentation/swiftui/expandedwindowtoolbarstyle) A window toolbar style which displays its title bar area above the toolbar.
- [UnifiedWindowToolbarStyle](/documentation/swiftui/unifiedwindowtoolbarstyle) A window toolbar style which displays its toolbar and title bar inline.
- [UnifiedCompactWindowToolbarStyle](/documentation/swiftui/unifiedcompactwindowtoolbarstyle) A window toolbar style similar to , but with a more compact vertical sizing.

## Styling a toolbar

- [toolbarBackground(_:for:)](/documentation/swiftui/view/toolbarbackground(_:for:))
- [toolbarColorScheme(_:for:)](/documentation/swiftui/view/toolbarcolorscheme(_:for:))
- [toolbarForegroundStyle(_:for:)](/documentation/swiftui/view/toolbarforegroundstyle(_:for:))
- [windowToolbarStyle(_:)](/documentation/swiftui/scene/windowtoolbarstyle(_:))
- [toolbarLabelStyle](/documentation/swiftui/environmentvalues/toolbarlabelstyle)
- [ToolbarLabelStyle](/documentation/swiftui/toolbarlabelstyle)
- [SpacerSizing](/documentation/swiftui/spacersizing)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
