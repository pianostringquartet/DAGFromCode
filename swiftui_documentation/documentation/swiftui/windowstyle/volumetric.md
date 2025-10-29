---
title: volumetric
description: A window style that creates a 3D volumetric window.
source: https://developer.apple.com/documentation/swiftui/windowstyle/volumetric
timestamp: 2025-10-29T00:10:38.864Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [windowstyle](/documentation/swiftui/windowstyle)

**Type Property**

# volumetric

**Available on:** visionOS 1.0+

> A window style that creates a 3D volumetric window.

```swift
static var volumetric: VolumetricWindowStyle { get }
```

## Discussion

Use a volumetric window — or a *volume* — to display 3D content within a bounded region. For example, [World](/documentation/visionOS/World) uses a volume to present a `Globe` model that people can pick up and move around the Shared Space using the window bar:

```swift
WindowGroup(id: Module.globe.name) {
    Globe()
        .environment(model)
}
.windowStyle(.volumetric)
.defaultSize(width: 0.6, height: 0.6, depth: 0.6, in: .meters)
```

A volume enables someone to view content from all angles, unlike other windows which fade out as people move around the window. Also unlike other windows, a volume uses fixed scale, which means that objects in the volume appear smaller when the volume is farther away, like real objects would. For a comparison of fixed and dynamic scale, see [spatial-layout#Scale](/design/Human-Interface-Guidelines/spatial-layout) in the Human Interface Guidelines.

You can specify a size for the volume using one of the default size scene modifiers, like [defaultSize(width:height:depth:in:)](/documentation/swiftui/scene/defaultsize(width:height:depth:in:)). Because volumes use fixed scale, it’s typically convenient to specify a size in physical units — like meters, as the above code demonstrates. People can’t change the size of the volume after it appears.

> [!NOTE]
> Use this style only with [Window Group](/documentation/swiftui/windowgroup). Windows that you create using [Window](/documentation/swiftui/window) don’t support the volumetric window style.

For design guidance, see [windows#Volumes](/design/Human-Interface-Guidelines/windows) in the Human Interface Guidelines. If you want to place 3D objects arbitrarily throughout the Shared Space or in a Full Space, use an [Immersive Space](/documentation/swiftui/immersivespace) instead.

## Getting built-in window styles

- [automatic](/documentation/swiftui/windowstyle/automatic)
- [hiddenTitleBar](/documentation/swiftui/windowstyle/hiddentitlebar)
- [plain](/documentation/swiftui/windowstyle/plain)
- [titleBar](/documentation/swiftui/windowstyle/titlebar)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
