---
title: widgetTexture(_:)
description: Specifies the widget texture for this widget.
source: https://developer.apple.com/documentation/swiftui/widgetconfiguration/widgettexture(_:)
timestamp: 2025-10-29T00:09:53.498Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [widgetconfiguration](/documentation/swiftui/widgetconfiguration)

**Instance Method**

# widgetTexture(_:)

**Available on:** visionOS 26.0+

> Specifies the widget texture for this widget.

```swift
@MainActor @preconcurrency func widgetTexture(_ material: WidgetTexture) -> some WidgetConfiguration
```

## Return Value

A widget configuration using the specified widget texture.

## Discussion

Widgets in visionOS use a have a material treatment applied. By default, all widgets use the `glass` widget texture. Use this modifier to explicitly set the widget texture for a widget.

The following displays a widget whose texture is paper:

```swift
AppIntentConfiguration(
    kind: kind, intent: LatestPostConfiguration.self, provider: Provider()
) { entry in
    LatestPostsView(entry: entry)
}
.widgetTexture(.paper)
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
