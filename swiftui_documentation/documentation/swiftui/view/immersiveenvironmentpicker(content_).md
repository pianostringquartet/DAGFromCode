---
title: immersiveEnvironmentPicker(content:)
description: Add menu items to open immersive spaces from a media player’s environment picker.
source: https://developer.apple.com/documentation/swiftui/view/immersiveenvironmentpicker(content:)
timestamp: 2025-10-29T00:13:13.965Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# immersiveEnvironmentPicker(content:)

**Available on:** visionOS 2.0+

> Add menu items to open immersive spaces from a media player’s environment picker.

```swift
nonisolated func immersiveEnvironmentPicker<Content>(@ViewBuilder content: () -> Content) -> some View where Content : View
```

## Discussion

These items are added alongside recently used system environments.

```swift
SystemPlayerView(player: player)
    .immersiveEnvironmentPicker {
        Button("Chalet", systemImage: "fireplace") {
            Task {
                await openImmersiveSpace(id: "Chalet")
            }
        }
    }
```

Use a [UIView Controller Representable](/documentation/swiftui/uiviewcontrollerrepresentable) instance to display a [AVPlayer View Controller](/documentation/AVKit/AVPlayerViewController) class in your SwiftUI interface.

```swift
struct SystemPlayerView: UIViewControllerRepresentable {
    let player: AVPlayer

    func makeUIViewController(context: Context) -> AVPlayerViewController {
        return AVPlayerViewController()
    }

    func updateUIViewController(_ avPlayerViewController: AVPlayerViewController, context: Context) {
        viewController.player = player
    }
}
```

Items will be donated to media players (like [AVPlayer View Controller](/documentation/AVKit/AVPlayerViewController)) downstream in the hierarchy.

> [!NOTE]
> View the sample code in [building-an-immersive-media-viewing](/documentation/visionOS/building-an-immersive-media-viewing-experience) to see an immersive space in action.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
