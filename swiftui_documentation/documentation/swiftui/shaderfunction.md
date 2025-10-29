---
title: ShaderFunction
description: A reference to a function in a Metal shader library.
source: https://developer.apple.com/documentation/swiftui/shaderfunction
timestamp: 2025-10-29T00:11:25.163Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ShaderFunction

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+

> A reference to a function in a Metal shader library.

```swift
@dynamicCallable struct ShaderFunction
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating a shader function

- [init(library:name:)](/documentation/swiftui/shaderfunction/init(library:name:)) Creates a new function reference from the provided shader library and function name string.

## Configuring a function

- [library](/documentation/swiftui/shaderfunction/library) The shader library storing the function.
- [name](/documentation/swiftui/shaderfunction/name) The name of the shader function in the library.
- [dynamicallyCall(withArguments:)](/documentation/swiftui/shaderfunction/dynamicallycall(witharguments:)) Returns a new shader by applying the provided argument values to the referenced function.

## Accessing Metal shaders

- [colorEffect(_:isEnabled:)](/documentation/swiftui/view/coloreffect(_:isenabled:))
- [distortionEffect(_:maxSampleOffset:isEnabled:)](/documentation/swiftui/view/distortioneffect(_:maxsampleoffset:isenabled:))
- [layerEffect(_:maxSampleOffset:isEnabled:)](/documentation/swiftui/view/layereffect(_:maxsampleoffset:isenabled:))
- [Shader](/documentation/swiftui/shader)
- [ShaderLibrary](/documentation/swiftui/shaderlibrary)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
