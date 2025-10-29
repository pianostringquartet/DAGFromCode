---
title: PreviewProvider
description: A type that produces view previews in Xcode.
source: https://developer.apple.com/documentation/swiftui/previewprovider
timestamp: 2025-10-29T00:15:17.154Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# PreviewProvider

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A type that produces view previews in Xcode.

```swift
@MainActor @preconcurrency protocol PreviewProvider : _PreviewProvider
```

## Overview

> [!IMPORTANT]
> You can use this protocol to define a preview manually, but you typically use a preview macro like [Preview(_:body:)](/documentation/swiftui/preview(_:body:)) instead.

You can create an Xcode preview by declaring a structure that conforms to the `PreviewProvider` protocol. Implement the required [previews-swift.type.property](/documentation/swiftui/previewprovider/previews-swift.type.property) computed property, and return the view to display:

```swift
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
```

Xcode statically discovers preview providers in your project and generates previews for any providers currently open in the source editor. Xcode generates the preview using the current run destination as a hint for which device to display. For example, Xcode shows the following preview if you’ve selected an iOS target to run on the iPhone 12 Pro Max simulator:



When you create a new file (File > New > File) and choose the SwiftUI view template, Xcode automatically inserts a preview structure at the bottom of the file that you can configure. You can also create new preview structures in an existing SwiftUI view file by choosing Editor > Create Preview.

Customize the preview’s appearance by adding view modifiers, just like you do when building a custom [View](/documentation/swiftui/view). This includes preview-specific modifiers that let you control aspects of the preview, like the device orientation:

```swift
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
```



For the complete list of preview customizations, see [Previews-in](/documentation/swiftui/previews-in-xcode).

Xcode creates different previews for each view in your preview, so you can see variations side by side. For example, you might want to see a view’s light and dark appearances simultaneously:

```swift
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
        CircleImage()
            .preferredColorScheme(.dark)
    }
}
```

Use a [Group](/documentation/swiftui/group) when you want to maintain different previews, but apply a single modifier to all of them:

```swift
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CircleImage()
            CircleImage()
                .preferredColorScheme(.dark)
        }
        .previewLayout(.sizeThatFits)
    }
}
```



## Creating a preview

- [previews](/documentation/swiftui/previewprovider/previews-swift.type.property) A collection of views to preview.
- [Previews](/documentation/swiftui/previewprovider/previews-swift.associatedtype) The type to preview.

## Specifying the platform

- [platform](/documentation/swiftui/previewprovider/platform) The platform on which to run the provider.

## Defining a preview

- [Previewable()](/documentation/swiftui/previewable())
- [PreviewPlatform](/documentation/swiftui/previewplatform)
- [previewDisplayName(_:)](/documentation/swiftui/view/previewdisplayname(_:))
- [PreviewModifier](/documentation/swiftui/previewmodifier)
- [PreviewModifierContent](/documentation/swiftui/previewmodifiercontent)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
