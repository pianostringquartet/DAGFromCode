---
title: Previewable()
description: Tag allowing a dynamic property to appear inline in a preview.
source: https://developer.apple.com/documentation/swiftui/previewable()
timestamp: 2025-10-29T00:09:26.946Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Macro**

# Previewable()

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Tag allowing a dynamic property to appear inline in a preview.

```swift
@attached(peer) macro Previewable()
```

## Overview

Tagging a variable declaration at root scope in your `#Preview` body with ‘@Previewable’ allows you to use dynamic properties inline in previews. The `#Preview` macro will generate an embedded SwiftUI view; tagged declarations become properties on the view, and all remaining statements form the view’s body.

```swift
#Preview("toggle") {
    @Previewable @State var toggled = true
    return Toggle("Loud Noises", isOn: $toggled)
}
```

It is an error to use `@Previewable` outside of a `#Preview` body closure.

## Defining a preview

- [PreviewProvider](/documentation/swiftui/previewprovider)
- [PreviewPlatform](/documentation/swiftui/previewplatform)
- [previewDisplayName(_:)](/documentation/swiftui/view/previewdisplayname(_:))
- [PreviewModifier](/documentation/swiftui/previewmodifier)
- [PreviewModifierContent](/documentation/swiftui/previewmodifiercontent)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
