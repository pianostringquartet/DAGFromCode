---
title: SettingsLink
description: A view that opens the Settings scene defined by an app.
source: https://developer.apple.com/documentation/swiftui/settingslink
timestamp: 2025-10-29T00:10:17.638Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SettingsLink

**Available on:** macOS 14.0+

> A view that opens the Settings scene defined by an app.

```swift
struct SettingsLink<Label> where Label : View
```

## Overview

On macOS, clicking on the link opens the window for the scene or orders it to the front if it is already open.

## Conforms To

- [View](/documentation/swiftui/view)

## Creating a settings link

- [init()](/documentation/swiftui/settingslink/init()) Creates a settings link with the default system label.
- [init(label:)](/documentation/swiftui/settingslink/init(label:)) Creates a settings link with a custom label.

## Supporting types

- [DefaultSettingsLinkLabel](/documentation/swiftui/defaultsettingslinklabel) The default label to use for a settings link.

## Managing a settings window

- [Settings](/documentation/swiftui/settings)
- [OpenSettingsAction](/documentation/swiftui/opensettingsaction)
- [openSettings](/documentation/swiftui/environmentvalues/opensettings)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
