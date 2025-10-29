---
title: ShaderLibrary
description: A Metal shader library.
source: https://developer.apple.com/documentation/swiftui/shaderlibrary
timestamp: 2025-10-29T00:11:48.005Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ShaderLibrary

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+

> A Metal shader library.

```swift
@dynamicMemberLookup struct ShaderLibrary
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting the default shader library

- [default](/documentation/swiftui/shaderlibrary/default) The default shader library of the main (i.e. app) bundle.
- [bundle(_:)](/documentation/swiftui/shaderlibrary/bundle(_:)) Returns the default shader library of the specified bundle.

## Creating a shader library

- [init(url:)](/documentation/swiftui/shaderlibrary/init(url:)) Creates a new Metal shader library from the contents of , which must be the location  of precompiled Metal library. Functions compiled from the returned library will only be cached as long as the returned library exists.
- [init(data:)](/documentation/swiftui/shaderlibrary/init(data:)) Creates a new Metal shader library from , which must be the contents of precompiled Metal library. Functions compiled from the returned library will only be cached as long as the returned library exists.

## Access shader functions

- [subscript(dynamicMember:)](/documentation/swiftui/shaderlibrary/subscript(dynamicmember:)-swift.type.subscript) Returns a new shader function representing the stitchable MSL function called  in the default shader library.

## Subscripts

- [subscript(dynamicMember:)](/documentation/swiftui/shaderlibrary/subscript(dynamicmember:)-swift.subscript) Returns a new shader function representing the stitchable MSL function in the library called .

## Accessing Metal shaders

- [colorEffect(_:isEnabled:)](/documentation/swiftui/view/coloreffect(_:isenabled:))
- [distortionEffect(_:maxSampleOffset:isEnabled:)](/documentation/swiftui/view/distortioneffect(_:maxsampleoffset:isenabled:))
- [layerEffect(_:maxSampleOffset:isEnabled:)](/documentation/swiftui/view/layereffect(_:maxsampleoffset:isenabled:))
- [Shader](/documentation/swiftui/shader)
- [ShaderFunction](/documentation/swiftui/shaderfunction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
