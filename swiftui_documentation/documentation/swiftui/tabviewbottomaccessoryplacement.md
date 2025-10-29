---
title: TabViewBottomAccessoryPlacement
description: A placement of the bottom accessory in a tab view. You can use this to adjust the content of the accessory view based on the placement.
source: https://developer.apple.com/documentation/swiftui/tabviewbottomaccessoryplacement
timestamp: 2025-10-29T00:13:58.602Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# TabViewBottomAccessoryPlacement

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> A placement of the bottom accessory in a tab view. You can use this to adjust the content of the accessory view based on the placement.

```swift
enum TabViewBottomAccessoryPlacement
```

## Overview

The following example shows playback controls when the view is inline, and an expanded slider player view when the view is expanded.

```swift
struct MusicPlaybackView: View {
    @Environment(\.tabViewBottomAccessoryPlacement) var placement

    var body: some View {
        switch placement {
        case .inline:
            ControlsPlaybackView()
        case .expanded:
            SliderPlaybackView()
    }
}
```

You can set the `TabView` bottom accessory using [tabViewBottomAccessory(content:)](/documentation/swiftui/view/tabviewbottomaccessory(content:))

```swift
TabView {
    Tab("Home", systemImage: "house") {
        HomeView()
    }

    Tab("Alerts", systemImage: "bell") {
        AlertsView()
    }

    TabSection("Categories") {
        Tab("Climate", systemImage: "fan") {
            ClimateView()
        }

        Tab("Lights", systemImage: "lightbulb") {
            LightsView()
        }
    }
}
.tabViewBottomAccessory {
    HomeStatusView()
}
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Enumeration Cases

- [TabViewBottomAccessoryPlacement.expanded](/documentation/swiftui/tabviewbottomaccessoryplacement/expanded) The bar is expanded on top of the bottom tab bar, if there is a bottom tab bar, or at the bottom of the tab’s content view.
- [TabViewBottomAccessoryPlacement.inline](/documentation/swiftui/tabviewbottomaccessoryplacement/inline) The view is displayed in line with the bottom tab bar.

## Configuring a tab bar

- [tabViewSidebarHeader(content:)](/documentation/swiftui/view/tabviewsidebarheader(content:))
- [tabViewSidebarFooter(content:)](/documentation/swiftui/view/tabviewsidebarfooter(content:))
- [tabViewSidebarBottomBar(content:)](/documentation/swiftui/view/tabviewsidebarbottombar(content:))
- [AdaptableTabBarPlacement](/documentation/swiftui/adaptabletabbarplacement)
- [tabBarPlacement](/documentation/swiftui/environmentvalues/tabbarplacement)
- [TabBarPlacement](/documentation/swiftui/tabbarplacement)
- [isTabBarShowingSections](/documentation/swiftui/environmentvalues/istabbarshowingsections)
- [TabBarMinimizeBehavior](/documentation/swiftui/tabbarminimizebehavior)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
