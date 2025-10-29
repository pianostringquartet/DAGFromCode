---
title: levelOfDetail
description: The level of detail the view is recommended to have.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/levelofdetail
timestamp: 2025-10-29T00:11:04.932Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# levelOfDetail

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, visionOS 26.0+

> The level of detail the view is recommended to have.

```swift
var levelOfDetail: LevelOfDetail { get set }
```

## Discussion

Read from the environment with

```swift
@Environment(\.levelOfDetail) var levelOfDetail
```

To customize your view based on recommended level of detail, read the environment value using the `.levelOfDetail` key and apply that to change your view.

```swift
var body: some View {
     switch levelOfDetail {
     case .default:
         VStack {
            NewsTitleView()
            NewsBodyView()
         }
     case .simplified:
         NewsImageOverview()
     }
}
```

> [!NOTE]
> The levelOfDetail can be determined by different factors depending on the platforms.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
