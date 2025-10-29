---
title: ToolbarRole
description: The purpose of content that populates the toolbar.
source: https://developer.apple.com/documentation/swiftui/toolbarrole
timestamp: 2025-10-29T00:14:40.560Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ToolbarRole

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The purpose of content that populates the toolbar.

```swift
struct ToolbarRole
```

## Overview

A toolbar role provides a description of the purpose of content that populates the toolbar. The purpose of the content influences how a toolbar renders its content. For example, a [browser](/documentation/swiftui/toolbarrole/browser) will automatically leading align the title of a toolbar in iPadOS.

Provide this type to the [toolbarRole(_:)](/documentation/swiftui/view/toolbarrole(_:)) modifier:

```swift
ContentView()
    .navigationTitle("Browser")
    .toolbarRole(.browser)
    .toolbar {
        ToolbarItem(placement: .primaryAction) {
            AddButton()
        }
     }
```

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Behavior-specific roles

- [browser](/documentation/swiftui/toolbarrole/browser) The browser role.
- [editor](/documentation/swiftui/toolbarrole/editor) The editor role.
- [navigationStack](/documentation/swiftui/toolbarrole/navigationstack) The navigationStack role.

## Automatic roles

- [automatic](/documentation/swiftui/toolbarrole/automatic) The automatic role.

## Specifying the role of toolbar content

- [toolbarRole(_:)](/documentation/swiftui/view/toolbarrole(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
