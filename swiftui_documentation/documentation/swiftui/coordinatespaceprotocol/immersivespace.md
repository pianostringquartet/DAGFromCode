---
title: immersiveSpace
description: The named coordinate space that represents the currently opened  scene. If no immersive space is currently opened, this CoordinateSpace provides the same behavior as the  coordinate space.
source: https://developer.apple.com/documentation/swiftui/coordinatespaceprotocol/immersivespace
timestamp: 2025-10-29T00:14:43.915Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [coordinatespaceprotocol](/documentation/swiftui/coordinatespaceprotocol)

**Type Property**

# immersiveSpace

**Available on:** visionOS 1.1+

> The named coordinate space that represents the currently opened  scene. If no immersive space is currently opened, this CoordinateSpace provides the same behavior as the  coordinate space.

```swift
static var immersiveSpace: NamedCoordinateSpace { get }
```

## Discussion

Use this to convert transforms from a window to an immersive space. The following sample converts the top-leading-back origin of a Model3D view to coordinates in the immersive space.

```swift
Model3D(url: URL(string: "https://example.com/robot.usdz")!)
    .onGeometryChange3D(for: AffineTransform3D.self) { proxy in
        // Convert the view's transform to the immersive space
        return proxy.transform(in: .immersiveSpace) ?? .identity
    } action: { transform in
        appModel.immersiveSpaceFromCuboid = transform
    }
}
```

Then, apply it to a corresponding Model3D in the immersive space.

```swift
if let transform = appModel.immersiveSpaceFromRobot {
    Model3D(url: URL(string: "https://example.com/robot.usdz")!)
        // Align the origin of this Model3D to its top-leading-back
        .visualEffect3D({ effect, proxy in
            effect
                .offset(x: proxy.size.width/2, y: proxy.size.height/2)
                .offset(z: proxy.size.depth/2)
        })
        // Apply the transform in SRT order
       .scaleEffect(transform.scale)
       .rotation3DEffect(transform.rotation ?? .identity)
       .transform3DEffect(AffineTransform3D(
           translation: transform.translation))
}
```

To apply scale and rotation relative to a view’s origin, don’t set them at the same time using [transform3DEffect(_:)](/documentation/swiftui/view/transform3deffect(_:)). Instead, set them separately using [scaleEffect(_:anchor:)](/documentation/swiftui/view/scaleeffect(_:anchor:)) together with [rotation3DEffect(_:anchor:)](/documentation/swiftui/view/rotation3deffect(_:anchor:)).

> [!NOTE]
> See WWDC24 session [](https://developer.apple.com/wwdc24/10153/) for details on how to convert between coordinate spaces with SwiftUI and RealityKit.

## Getting built-in coordinate spaces

- [global](/documentation/swiftui/coordinatespaceprotocol/global)
- [local](/documentation/swiftui/coordinatespaceprotocol/local)
- [named(_:)](/documentation/swiftui/coordinatespaceprotocol/named(_:))
- [scrollView](/documentation/swiftui/coordinatespaceprotocol/scrollview)
- [scrollView(axis:)](/documentation/swiftui/coordinatespaceprotocol/scrollview(axis:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
