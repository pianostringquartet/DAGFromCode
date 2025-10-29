---
title: associatedKind(_:)
description: Tells the system that a relevance-based widget can replace a timeline-based widget.
source: https://developer.apple.com/documentation/swiftui/widgetconfiguration/associatedkind(_:)
timestamp: 2025-10-29T00:10:15.252Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [widgetconfiguration](/documentation/swiftui/widgetconfiguration)

**Instance Method**

# associatedKind(_:)

**Available on:** watchOS 26.0+

> Tells the system that a relevance-based widget can replace a timeline-based widget.

```swift
@MainActor @preconcurrency func associatedKind(_ associatedKind: String?) -> some WidgetConfiguration
```

## Discussion

If you offer a timeline-based widget and a widget that uses relevance clues, a person could pin the timeline widget to the Smart Stack, and several instances of the relevance-based widget could appear in the Smart Stack, causing the stack to run out of space. To allow the Smart Stack to display the most relevant widgets by replacing the timeline-based widget with your widgets that use relevance clues, associate your timeline-based widget with relevance widget configuration using `associatedKind(_:)`.

> [!NOTE]
> Use this modifier for a widget you configure with a `RelevanceConfiguration` and provide an associated timeline-based widget. The system ignores associations with other relevance-based widgets and if your configuration doesn’t conform to `RelevanceConfiguration`.

For more information about widgets that appear in the Smart Stack on Apple Watch, refer to doc:Widget-Suggestions-In-Smart-Stacks.

- parameter: associatedKind: The string that identifies the associated timeline-based widget.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
