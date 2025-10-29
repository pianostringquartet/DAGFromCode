---
title: Accessible appearance
description: Enhance the legibility of content in your app’s interface.
source: https://developer.apple.com/documentation/swiftui/accessible-appearance
timestamp: 2025-10-29T00:09:18.317Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Accessible appearance

> Enhance the legibility of content in your app’s interface.

## Overview

Make content easier for people to see by making it larger, giving it greater contrast, or reducing the amount of distracting motion.



For design guidance, see [accessibility#Text](/design/Human-Interface-Guidelines/accessibility) in the Accessibility section of the Human Interface Guidelines.

## Managing color

- [accessibilityIgnoresInvertColors(_:)](/documentation/swiftui/view/accessibilityignoresinvertcolors(_:)) Sets whether this view should ignore the system Smart Invert setting.
- [accessibilityInvertColors](/documentation/swiftui/environmentvalues/accessibilityinvertcolors) Whether the system preference for Invert Colors is enabled.
- [accessibilityDifferentiateWithoutColor](/documentation/swiftui/environmentvalues/accessibilitydifferentiatewithoutcolor) Whether the system preference for Differentiate without Color is enabled.

## Enlarging content

- [accessibilityShowsLargeContentViewer()](/documentation/swiftui/view/accessibilityshowslargecontentviewer()) Adds a default large content view to be shown by the large content viewer.
- [accessibilityShowsLargeContentViewer(_:)](/documentation/swiftui/view/accessibilityshowslargecontentviewer(_:)) Adds a custom large content view to be shown by the large content viewer.
- [accessibilityLargeContentViewerEnabled](/documentation/swiftui/environmentvalues/accessibilitylargecontentviewerenabled) Whether the Large Content Viewer is enabled.

## Improving legibility

- [accessibilityShowButtonShapes](/documentation/swiftui/environmentvalues/accessibilityshowbuttonshapes) Whether the system preference for Show Button Shapes is enabled.
- [accessibilityReduceTransparency](/documentation/swiftui/environmentvalues/accessibilityreducetransparency) Whether the system preference for Reduce Transparency is enabled.
- [legibilityWeight](/documentation/swiftui/environmentvalues/legibilityweight) The font weight to apply to text.
- [LegibilityWeight](/documentation/swiftui/legibilityweight) The Accessibility Bold Text user setting options.

## Minimizing motion

- [accessibilityDimFlashingLights](/documentation/swiftui/environmentvalues/accessibilitydimflashinglights) Whether the setting to reduce flashing or strobing lights in video content is on. This setting can also be used to determine if UI in playback controls should be shown to indicate upcoming content that includes flashing or strobing lights.
- [accessibilityPlayAnimatedImages](/documentation/swiftui/environmentvalues/accessibilityplayanimatedimages) Whether the setting for playing animations in an animated image is on. When this value is false, any presented image that contains animation should not play automatically.
- [accessibilityReduceMotion](/documentation/swiftui/environmentvalues/accessibilityreducemotion) Whether the system preference for Reduce Motion is enabled.

## Using assistive access

- [accessibilityAssistiveAccessEnabled](/documentation/swiftui/environmentvalues/accessibilityassistiveaccessenabled) A Boolean value that indicates whether Assistive Access is in use.
- [AssistiveAccess](/documentation/swiftui/assistiveaccess) A scene that presents an interface appropriate for Assistive Access on iOS and iPadOS. On other platforms, this scene is unused.

## Accessibility

- [Accessibility fundamentals](/documentation/swiftui/accessibility-fundamentals)
- [Accessible controls](/documentation/swiftui/accessible-controls)
- [Accessible descriptions](/documentation/swiftui/accessible-descriptions)
- [Accessible navigation](/documentation/swiftui/accessible-navigation)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
