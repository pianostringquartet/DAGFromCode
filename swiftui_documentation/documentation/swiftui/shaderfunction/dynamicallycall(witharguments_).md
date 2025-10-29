---
title: dynamicallyCall(withArguments:)
description: Returns a new shader by applying the provided argument values to the referenced function.
source: https://developer.apple.com/documentation/swiftui/shaderfunction/dynamicallycall(witharguments:)
timestamp: 2025-10-29T00:15:32.696Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [shaderfunction](/documentation/swiftui/shaderfunction)

**Instance Method**

# dynamicallyCall(withArguments:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+

> Returns a new shader by applying the provided argument values to the referenced function.

```swift
func dynamicallyCall(withArguments args: [Shader.Argument]) -> Shader
```

## Discussion

Typically this subscript is used implicitly via function-call syntax, for example:

let shader = ShaderLibrary.default.myFunction(.float(42))

which creates a shader passing the value `42` to the first unbound parameter of `myFunction()`.

## Configuring a function

- [library](/documentation/swiftui/shaderfunction/library)
- [name](/documentation/swiftui/shaderfunction/name)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
