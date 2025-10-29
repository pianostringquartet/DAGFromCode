---
title: Shader.Argument
description: A single uniform argument value to a shader function.
source: https://developer.apple.com/documentation/swiftui/shader/argument
timestamp: 2025-10-29T00:10:11.993Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shader](/documentation/swiftui/shader)

**Structure**

# Shader.Argument

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+

> A single uniform argument value to a shader function.

```swift
struct Argument
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating argument values

- [boundingRect](/documentation/swiftui/shader/argument/boundingrect) Returns an argument value representing the bounding rect of the shape or view that the shader is attached to, as . This value is undefined for shaders that do not have a natural bounding rect (e.g. filter effects drawn into ).
- [color(_:)](/documentation/swiftui/shader/argument/color(_:)) Returns an argument value representing . When passed to a MSL function it will convert to a  value, as a premultiplied color in the target color space.
- [colorArray(_:)](/documentation/swiftui/shader/argument/colorarray(_:)) Returns an argument value defined by the provided array of color values. When passed to an MSL function it will convert to a  pair of parameters.
- [data(_:)](/documentation/swiftui/shader/argument/data(_:)) Returns an argument value defined by the provided data value. When passed to an MSL function it will convert to a  pair of parameters.
- [float(_:)](/documentation/swiftui/shader/argument/float(_:)) Returns an argument value representing the MSL value .
- [float2(_:)](/documentation/swiftui/shader/argument/float2(_:)) Returns an argument value representing the MSL value .
- [float2(_:_:)](/documentation/swiftui/shader/argument/float2(_:_:)) Returns an argument value representing the MSL value .
- [float3(_:_:_:)](/documentation/swiftui/shader/argument/float3(_:_:_:)) Returns an argument value representing the MSL value .
- [float4(_:_:_:_:)](/documentation/swiftui/shader/argument/float4(_:_:_:_:)) Returns an argument value representing the MSL value .
- [floatArray(_:)](/documentation/swiftui/shader/argument/floatarray(_:)) Returns an argument value defined by the provided array of floating point numbers. When passed to an MSL function it will convert to a  pair of parameters.
- [image(_:)](/documentation/swiftui/shader/argument/image(_:)) Returns an argument value defined by the provided image. When passed to an MSL function it will convert to a  value. Currently only one image parameter is supported per  instance.

## Creating a shader

- [init(function:arguments:)](/documentation/swiftui/shader/init(function:arguments:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
