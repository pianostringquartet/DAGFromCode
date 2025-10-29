---
title: supportsImagePlayground
description: A Boolean value that indicates whether image generation is available on the current device.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/supportsimageplayground
timestamp: 2025-10-29T00:11:48.079Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# supportsImagePlayground

**Available on:** iOS 18.1+, iPadOS 18.1+, Mac Catalyst 18.1+, macOS 15.1+, visionOS 2.4+

> A Boolean value that indicates whether image generation is available on the current device.

```swift
var supportsImagePlayground: Bool { get }
```

## Discussion

The value of this property is `true` when the current device supports image generation. A device might not support this feature if the device or system doesn’t meet the hardware requirements or the necessary environment (for example runs in a supported language) to generate the images.

Read this property from the environment to determine if your app can use the `imagePlaygroundSheet`.

```swift
struct ImageGenerationPresentingView: View {
    @Environment(\.supportsImagePlayground) private var supportsImagePlayground
    @State private var showsImagePlaygroundSheet = false

    var body: some View {
        Button("Open Generation Sheet") {
            showsImagePlaygroundSheet = true
        }
        .disabled(!supportsImagePlayground)
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
