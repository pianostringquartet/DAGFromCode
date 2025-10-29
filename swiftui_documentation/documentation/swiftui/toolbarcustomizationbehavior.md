---
title: ToolbarCustomizationBehavior
description: The customization behavior of customizable toolbar content.
source: https://developer.apple.com/documentation/swiftui/toolbarcustomizationbehavior
timestamp: 2025-10-29T00:12:07.521Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ToolbarCustomizationBehavior

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The customization behavior of customizable toolbar content.

```swift
struct ToolbarCustomizationBehavior
```

## Overview

Customizable toolbar content support different types of customization behaviors. For example, some customizable content may not be removed by the user. Some content may be placed in a toolbar that supports customization overall, but not for that particular content.

Use this type in conjunction with the [customizationBehavior(_:)](/documentation/swiftui/customizabletoolbarcontent/customizationbehavior(_:)) modifier.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting customization behaviors

- [default](/documentation/swiftui/toolbarcustomizationbehavior/default) The default customization behavior.
- [disabled](/documentation/swiftui/toolbarcustomizationbehavior/disabled) The disabled customization behavior.
- [reorderable](/documentation/swiftui/toolbarcustomizationbehavior/reorderable) The reorderable customization behavior.

## Populating a customizable toolbar

- [toolbar(id:content:)](/documentation/swiftui/view/toolbar(id:content:))
- [CustomizableToolbarContent](/documentation/swiftui/customizabletoolbarcontent)
- [ToolbarCustomizationOptions](/documentation/swiftui/toolbarcustomizationoptions)
- [SearchToolbarBehavior](/documentation/swiftui/searchtoolbarbehavior)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
