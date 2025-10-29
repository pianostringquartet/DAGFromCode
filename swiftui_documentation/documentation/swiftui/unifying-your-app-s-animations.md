---
title: Unifying your app’s animations
description: Create a consistent UI animation experience across SwiftUI, UIKit, and AppKit.
source: https://developer.apple.com/documentation/swiftui/unifying-your-app-s-animations
timestamp: 2025-10-29T00:10:21.972Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Article**

# Unifying your app’s animations

> Create a consistent UI animation experience across SwiftUI, UIKit, and AppKit.

## Overview

Many apps use a combination of SwiftUI, UIKit, and AppKit to build and animate their interfaces. In iOS 18 and later, you can use SwiftUI animations in UIKit and AppKit. SwiftUI provides a wide range of standard as well as custom animation types.



SwiftUI, UIKit, and AppKit use different underlying implementations for animation. Apps that use multiple frameworks for animation might encounter certain issues, such as syncing animation timing or other inconsistencies, that can be difficult to troubleshoot and lead to a suboptimal user experience. Use SwiftUI animations to animate UI across all of these frameworks to create a more consistent and seamless experience on every platform.

### Create a SwiftUI animation

To create a SwiftUI animation in UIKit or AppKit, import SwiftUI and create a SwiftUI [Animation](/documentation/swiftui/animation). Then, pass that animation as a parameter into the doc://com.apple.documentation/documentation/uikit/uiview/4429628-animate class method on `UIView`, or the doc://com.apple.documentation/documentation/appkit/nsanimationcontext/4433144-animate class method on `NSAnimationContext`. The following examples compare how you can create a basic spring animation using a SwiftUI [Animation](/documentation/swiftui/animation) type across SwiftUI, UIKit, and AppKit.

### Use completion handlers with SwiftUI animations

You can provide an optional completion handler to these animation methods, which the system calls automatically after the animations complete. The following examples show a completion handler that changes the background color of the view to indicate when the animation completes.

### Retarget a SwiftUI animation

Similar to animations in SwiftUI views, you can smoothly retarget the animations you perform using the doc://com.apple.documentation/documentation/uikit/uiview/4429628-animate class method on `UIView` or the doc://com.apple.documentation/documentation/appkit/nsanimationcontext/4433144-animate class method on `NSAnimationContext`. Retargeting a SwiftUI animation uses the velocity from the previous animations to carry the animation forward with continuous velocity, creating a fluid animation experience. The following examples show retargeting an in-progress animation.

### Troubleshoot animations

Syncing animations across frameworks can surface differing behavior across implementations. Keep these tips in mind when you troubleshoot animations in your app:

- SwiftUI animations run on a background thread in your app’s process.
- SwiftUI animations don’t have a backing [CAAnimation](/documentation/QuartzCore/CAAnimation), which differentiates them from [UIView](/documentation/UIKit/UIView) animations.
- SwiftUI animations aren’t compatible with [UIView Property Animator](/documentation/UIKit/UIViewPropertyAnimator) or `UIView` keyframe animations.

For more information about providing a great animation experience in your app, see [](https://developer.apple.com/wwdc24/10145/).

## Related Documentation

- [Animation](/documentation/swiftui/animation)
- [withAnimation(_:_:)](/documentation/swiftui/withanimation(_:_:))

## Displaying SwiftUI views in AppKit

- [NSHostingController](/documentation/swiftui/nshostingcontroller)
- [NSHostingView](/documentation/swiftui/nshostingview)
- [NSHostingMenu](/documentation/swiftui/nshostingmenu)
- [NSHostingSizingOptions](/documentation/swiftui/nshostingsizingoptions)
- [NSHostingSceneRepresentation](/documentation/swiftui/nshostingscenerepresentation)
- [NSHostingSceneBridgingOptions](/documentation/swiftui/nshostingscenebridgingoptions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
