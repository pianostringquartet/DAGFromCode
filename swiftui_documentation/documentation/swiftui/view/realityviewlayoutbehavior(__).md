---
title: realityViewLayoutBehavior(_:)
description: A view modifier that controls the frame sizing and content alignment behavior for
source: https://developer.apple.com/documentation/swiftui/view/realityviewlayoutbehavior(_:)
timestamp: 2025-10-29T00:13:13.222Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# realityViewLayoutBehavior(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+

> A view modifier that controls the frame sizing and content alignment behavior for 

```swift
@MainActor @preconcurrency func realityViewLayoutBehavior(_ layoutOption: RealityViewLayoutOption) -> some View
```

## Discussion

This modifier is only accounted for after the end of the `make` closure. It isn’t checked on any calls to the `update` closure.

```swift
struct ModelWrapperView: View {
    let modelName: String
    var body: some View {
        RealityView { content in
            let model = try? await Entity(named: modelName)
            if let model {
                content.add(model)
            }
        }
        .realityViewLayoutBehavior(.fixedSize)
    }
}
```

See `RealityViewLayoutOption` for a list of options to pass into `realityViewLayoutBehavior(_:)`.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
