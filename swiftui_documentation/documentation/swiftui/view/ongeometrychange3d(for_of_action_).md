---
title: onGeometryChange3D(for:of:action:)
description: Returns a new view that arranges to call  whenever the value computed by  changes, where  provides access to the view’s 3D geometry properties.
source: https://developer.apple.com/documentation/swiftui/view/ongeometrychange3d(for:of:action:)
timestamp: 2025-10-29T00:13:09.265Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onGeometryChange3D(for:of:action:)

**Available on:** visionOS 2.0+

> Returns a new view that arranges to call  whenever the value computed by  changes, where  provides access to the view’s 3D geometry properties.

```swift
@MainActor @preconcurrency func onGeometryChange3D<T>(for type: T.Type, of transform: @escaping (GeometryProxy3D) -> T, action: @escaping (T) -> Void) -> some View where T : Equatable
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
