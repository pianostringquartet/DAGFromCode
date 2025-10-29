---
title: transform(in:)
description: The container view’s 3D transform converted to a defined coordinate space.
source: https://developer.apple.com/documentation/swiftui/geometryproxy/transform(in:)
timestamp: 2025-10-29T00:10:38.635Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [geometryproxy](/documentation/swiftui/geometryproxy)

**Instance Method**

# transform(in:)

**Available on:** visionOS 1.0+

> The container view’s 3D transform converted to a defined coordinate space.

```swift
func transform(in coordinateSpace: some CoordinateSpaceProtocol) -> AffineTransform3D?
```

## Discussion

If the view doesn’t have a well defined transform, such as if it is affected by a projection transform, this function may return `nil`.

## Accessing geometry characteristics

- [bounds(of:)](/documentation/swiftui/geometryproxy/bounds(of:))
- [frame(in:)](/documentation/swiftui/geometryproxy/frame(in:))
- [size](/documentation/swiftui/geometryproxy/size)
- [safeAreaInsets](/documentation/swiftui/geometryproxy/safeareainsets)
- [subscript(_:)](/documentation/swiftui/geometryproxy/subscript(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
