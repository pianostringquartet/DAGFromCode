---
title: PreviewPlatform
description: Platforms that can run the preview.
source: https://developer.apple.com/documentation/swiftui/previewplatform
timestamp: 2025-10-29T00:10:43.270Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# PreviewPlatform

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Platforms that can run the preview.

```swift
enum PreviewPlatform
```

## Overview

Xcode infers the platform for a preview based on the currently selected target. If you have a multiplatform target and want to suggest a particular target for a preview, implement the [platform](/documentation/swiftui/previewprovider/platform) computed property as a hint, and specify one of the preview platforms:

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

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting an operating system

- [PreviewPlatform.iOS](/documentation/swiftui/previewplatform/ios) Specifies iOS as the preview platform.
- [PreviewPlatform.macOS](/documentation/swiftui/previewplatform/macos) Specifies macOS as the preview platform.
- [PreviewPlatform.tvOS](/documentation/swiftui/previewplatform/tvos) Specifies tvOS as the preview platform.
- [PreviewPlatform.watchOS](/documentation/swiftui/previewplatform/watchos) Specifies watchOS as the preview platform.

## Defining a preview

- [Previewable()](/documentation/swiftui/previewable())
- [PreviewProvider](/documentation/swiftui/previewprovider)
- [previewDisplayName(_:)](/documentation/swiftui/view/previewdisplayname(_:))
- [PreviewModifier](/documentation/swiftui/previewmodifier)
- [PreviewModifierContent](/documentation/swiftui/previewmodifiercontent)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
