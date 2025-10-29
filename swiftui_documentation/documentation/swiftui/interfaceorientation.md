---
title: InterfaceOrientation
description: The orientation of the interface from the user’s perspective.
source: https://developer.apple.com/documentation/swiftui/interfaceorientation
timestamp: 2025-10-29T00:11:27.291Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# InterfaceOrientation

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The orientation of the interface from the user’s perspective.

```swift
struct InterfaceOrientation
```

## Overview

By default, device previews appear right side up, using orientation [portrait](/documentation/swiftui/interfaceorientation/portrait). You can change the orientation with a call to the [previewInterfaceOrientation(_:)](/documentation/swiftui/view/previewinterfaceorientation(_:)) modifier:

```swift
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
```

## Conforms To

- [CaseIterable](/documentation/Swift/CaseIterable)
- [Equatable](/documentation/Swift/Equatable)
- [Identifiable](/documentation/Swift/Identifiable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting an orientation

- [portrait](/documentation/swiftui/interfaceorientation/portrait) The device is in portrait mode, with the top of the device on top.
- [portraitUpsideDown](/documentation/swiftui/interfaceorientation/portraitupsidedown) The device is in portrait mode, but is upside down.
- [landscapeLeft](/documentation/swiftui/interfaceorientation/landscapeleft) The device is in landscape mode, with the top of the device on the left.
- [landscapeRight](/documentation/swiftui/interfaceorientation/landscaperight) The device is in landscape mode, with the top of the device on the right.

## Customizing a preview

- [previewDevice(_:)](/documentation/swiftui/view/previewdevice(_:))
- [PreviewDevice](/documentation/swiftui/previewdevice)
- [previewLayout(_:)](/documentation/swiftui/view/previewlayout(_:))
- [previewInterfaceOrientation(_:)](/documentation/swiftui/view/previewinterfaceorientation(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
