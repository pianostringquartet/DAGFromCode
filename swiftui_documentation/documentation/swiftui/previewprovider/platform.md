---
title: platform
description: The platform on which to run the provider.
source: https://developer.apple.com/documentation/swiftui/previewprovider/platform
timestamp: 2025-10-29T00:12:28.534Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [previewprovider](/documentation/swiftui/previewprovider)

**Type Property**

# platform

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The platform on which to run the provider.

```swift
@MainActor @preconcurrency static var platform: PreviewPlatform? { get }
```

## Discussion

Xcode infers the platform for a preview based on the currently selected target. If you have a multiplatform target and want to suggest a particular target for a preview, implement the `platform` computed property to provide a hint, and specify one of the [Preview Platform](/documentation/swiftui/previewplatform) values:

```swift
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }

    static var platform: PreviewPlatform? {
        PreviewPlatform.tvOS
    }
}
```

Xcode ignores this value unless you have a multiplatform target.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
