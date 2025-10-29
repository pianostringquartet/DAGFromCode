---
title: dropConfiguration(_:)
description: Configures a drop session.
source: https://developer.apple.com/documentation/swiftui/view/dropconfiguration(_:)
timestamp: 2025-10-29T00:10:16.997Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# dropConfiguration(_:)

**Available on:** macOS 26.0+

> Configures a drop session.

```swift
nonisolated func dropConfiguration(_ configuration: @escaping (DropSession) -> DropConfiguration) -> some View
```

## Parameters

**configuration**

A value that describes the configuration of a drop session.



## Return Value

A view that configures a drop session in a way, described by the return value of the `configuration` parameter.

## Discussion

Below is an example of a view that accepts drop of `Image` type. The view prefers drop operation `move` in a case when the source supports it (the source will remove the images from its storage after the drop operation). If the source does not support moving images, the destination will make copies.

```swift
       ExampleView()
           .dropDestination(for: Image.self) { images, _ in
               process(images)
           }
           .dropConfiguration { dropSession in
               if dropSession.suggestedOperations.contains(.move) {
                   return DropConfiguration(operation: .move)
               }
               return DropConfiguration(operation: .copy)
           }
```

> [!NOTE]
> The closure that provides the configuration is called frequently to allow specifying different operations for different drop locations in a view. Do not perform any expensive calculations in it.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
