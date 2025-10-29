---
title: VolumetricWindowStyle
description: A window style that creates a 3D volumetric window.
source: https://developer.apple.com/documentation/swiftui/volumetricwindowstyle
timestamp: 2025-10-29T00:14:46.165Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# VolumetricWindowStyle

**Available on:** visionOS 1.0+

> A window style that creates a 3D volumetric window.

```swift
struct VolumetricWindowStyle
```

## Overview

Use [volumetric](/documentation/swiftui/windowstyle/volumetric) to construct this style:

```swift
WindowGroup {
    ContentView()
}
.windowStyle(.volumetric)
```

## Conforms To

- [WindowStyle](/documentation/swiftui/windowstyle)

## Creating the window style

- [init()](/documentation/swiftui/volumetricwindowstyle/init())

## Supporting types

- [DefaultWindowStyle](/documentation/swiftui/defaultwindowstyle)
- [HiddenTitleBarWindowStyle](/documentation/swiftui/hiddentitlebarwindowstyle)
- [PlainWindowStyle](/documentation/swiftui/plainwindowstyle)
- [TitleBarWindowStyle](/documentation/swiftui/titlebarwindowstyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
