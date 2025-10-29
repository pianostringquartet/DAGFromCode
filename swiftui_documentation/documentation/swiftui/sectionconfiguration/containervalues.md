---
title: containerValues
description: The container values associated with the given section.
source: https://developer.apple.com/documentation/swiftui/sectionconfiguration/containervalues
timestamp: 2025-10-29T00:10:59.068Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sectionconfiguration](/documentation/swiftui/sectionconfiguration)

**Instance Property**

# containerValues

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> The container values associated with the given section.

```swift
var containerValues: ContainerValues { get }
```

## Discussion

Only explicitly created sections are able to have container values, meaning this container values will be empty if the section is implicit.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
