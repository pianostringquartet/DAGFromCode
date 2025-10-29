---
title: controlActiveState
description: The active appearance expected of controls in a window.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/controlactivestate
timestamp: 2025-10-29T00:09:10.685Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# controlActiveState

**Available on:** macOS 10.15+

> The active appearance expected of controls in a window.

```swift
var controlActiveState: ControlActiveState { get set }
```

## Discussion

`ControlActiveState` and `EnvironmentValues.controlActiveState` are deprecated, use `EnvironmentValues.appearsActive` instead.

Starting with macOS 15.0, the value of this environment property is strictly mapped to and from `EnvironmentValues.appearsActive` as follows:

- `appearsActive == true`, `controlActiveState` returns `.key`
- `appearsActive == false`, `controlActiveState` returns `.inactive`
- `controlActiveState` is set to `.key` or `.active`, `appearsActive` will be set to `true`.
- `controlActiveState` is set to `.inactive`, `appearsActive` will be set to `false`.

## Deprecated environment values

- [disableAutocorrection](/documentation/swiftui/environmentvalues/disableautocorrection)
- [sizeCategory](/documentation/swiftui/environmentvalues/sizecategory)
- [presentationMode](/documentation/swiftui/environmentvalues/presentationmode)
- [PresentationMode](/documentation/swiftui/presentationmode)
- [complicationRenderingMode](/documentation/swiftui/environmentvalues/complicationrenderingmode)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
