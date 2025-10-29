---
title: transform(in:)
description: The container view’s 3D transform converted to a defined coordinate space.
source: https://developer.apple.com/documentation/swiftui/geometryproxy3d/transform(in:)
timestamp: 2025-10-29T00:11:39.486Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [geometryproxy3d](/documentation/swiftui/geometryproxy3d)

**Instance Method**

# transform(in:)

**Available on:** visionOS 1.0+

> The container view’s 3D transform converted to a defined coordinate space.

```swift
func transform(in coordinateSpace: some CoordinateSpaceProtocol) -> AffineTransform3D?
```

## Discussion

If the view doesn’t have a well-defined transform, such as if it’s affected by a projection transform, this function may return `nil`.

## Accessing geometry characteristics

- [frame(in:)](/documentation/swiftui/geometryproxy3d/frame(in:))
- [size](/documentation/swiftui/geometryproxy3d/size)
- [safeAreaInsets](/documentation/swiftui/geometryproxy3d/safeareainsets)
- [subscript(_:)](/documentation/swiftui/geometryproxy3d/subscript(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
