---
title: ImageRenderer
description: An object that creates images from SwiftUI views.
source: https://developer.apple.com/documentation/swiftui/imagerenderer
timestamp: 2025-10-29T00:09:28.757Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Class**

# ImageRenderer

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> An object that creates images from SwiftUI views.

```swift
final class ImageRenderer<Content> where Content : View
```

## Overview

Use `ImageRenderer` to export bitmap image data from a SwiftUI view. You initialize the renderer with a view, then render images on demand, either by calling the [render(rasterizationScale:renderer:)](/documentation/swiftui/imagerenderer/render(rasterizationscale:renderer:)) method, or by using the renderer’s properties to create a [CGImage](/documentation/CoreGraphics/CGImage), [NSImage](/documentation/AppKit/NSImage), or [UIImage](/documentation/UIKit/UIImage).

By drawing to a [Canvas](/documentation/swiftui/canvas) and exporting with an `ImageRenderer`, you can generate images from any progammatically-rendered content, like paths, shapes, gradients, and more. You can also render standard SwiftUI views like [Text](/documentation/swiftui/text) views, or containers of multiple view types.

The following example uses a private `createAwardView(forUser:date:)` method to create a game app’s view of a trophy symbol with a user name and date. This view combines a [Canvas](/documentation/swiftui/canvas) that applies a shadow filter with two [Text](/documentation/swiftui/text) views into a [VStack](/documentation/swiftui/vstack). A [Button](/documentation/swiftui/button) allows the person to save this view. The button’s action uses an `ImageRenderer` to rasterize a `CGImage` and then calls a private `uploadAchievementImage(_:)` method to encode and upload the image.

```swift
var body: some View {
    let trophyAndDate = createAwardView(forUser: playerName,
                                         date: achievementDate)
    VStack {
        trophyAndDate
        Button("Save Achievement") {
            let renderer = ImageRenderer(content: trophyAndDate)
            if let image = renderer.cgImage {
                uploadAchievementImage(image)
            }
        }
    }
}

private func createAwardView(forUser: String, date: Date) -> some View {
    VStack {
        Image(systemName: "trophy")
            .resizable()
            .frame(width: 200, height: 200)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .shadow(color: .mint, radius: 5)
        Text(playerName)
            .font(.largeTitle)
        Text(achievementDate.formatted())
    }
    .multilineTextAlignment(.center)
    .frame(width: 200, height: 290)
}
```



Because `ImageRenderer` conforms to [Observable Object](/documentation/Combine/ObservableObject), you can use it to produce a stream of images as its properties change. Subscribe to the renderer’s [object Will Change](/documentation/swiftui/imagerenderer/objectwillchange) publisher, then use the renderer to rasterize a new image each time the subscriber receives an update.

> [!IMPORTANT]
> `ImageRenderer` output only includes views that SwiftUI renders, such as text, images, shapes, and composite views of these types. It does not render views provided by native platform frameworks (AppKit and UIKit) such as web views, media players, and some controls. For these views, `ImageRenderer` displays a placeholder image, similar to the behavior of [drawingGroup(opaque:colorMode:)](/documentation/swiftui/view/drawinggroup(opaque:colormode:)).

### Rendering to a PDF context

The [render(rasterizationScale:renderer:)](/documentation/swiftui/imagerenderer/render(rasterizationscale:renderer:)) method renders the specified view to any [CGContext](/documentation/CoreGraphics/CGContext). That means you aren’t limited to creating a rasterized `CGImage`. For example, you can generate PDF data by rendering to a PDF context. The resulting PDF maintains resolution-independence for supported members of the view hierarchy, such as text, symbol images, lines, shapes, and fills.

The following example uses the `createAwardView(forUser:date:)` method from the previous example, and exports its contents as an 800-by-600 point PDF to the file URL `renderURL`. It uses the `size` parameter sent to the rendering closure to center the `trophyAndDate` view vertically and horizontally on the page.

```swift
var body: some View {
    let trophyAndDate = createAwardView(forUser: playerName,
                                        date: achievementDate)
    VStack {
        trophyAndDate
        Button("Save Achievement") {
            let renderer = ImageRenderer(content: trophyAndDate)
            renderer.render { size, renderer in
                var mediaBox = CGRect(origin: .zero,
                                      size: CGSize(width: 800, height: 600))
                guard let consumer = CGDataConsumer(url: renderURL as CFURL),
                      let pdfContext =  CGContext(consumer: consumer,
                                                  mediaBox: &mediaBox, nil)
                else {
                    return
                }
                pdfContext.beginPDFPage(nil)
                pdfContext.translateBy(x: mediaBox.size.width / 2 - size.width / 2,
                                       y: mediaBox.size.height / 2 - size.height / 2)
                renderer(pdfContext)
                pdfContext.endPDFPage()
                pdfContext.closePDF()
            }
        }
    }
}
```

### Creating an image from drawing instructions

`ImageRenderer` makes it possible to create a custom image by drawing into a [Canvas](/documentation/swiftui/canvas), rendering a `CGImage` from it, and using that to initialize an [Image](/documentation/swiftui/image). To simplify this process, use the `Image` initializer [init(size:label:opaque:colorMode:renderer:)](/documentation/swiftui/image/init(size:label:opaque:colormode:renderer:)), which takes a closure whose argument is a [Graphics Context](/documentation/swiftui/graphicscontext) that you can directly draw into.

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Observable](/documentation/Observation/Observable)
- [ObservableObject](/documentation/Combine/ObservableObject)

## Creating an image renderer

- [init(content:)](/documentation/swiftui/imagerenderer/init(content:)) Creates a renderer object with a source content view.

## Providing the source view

- [content](/documentation/swiftui/imagerenderer/content) The root view rendered by this image renderer.

## Accessing renderer properties

- [proposedSize](/documentation/swiftui/imagerenderer/proposedsize) The size proposed to the root view.
- [scale](/documentation/swiftui/imagerenderer/scale) The scale at which to render the image.
- [isOpaque](/documentation/swiftui/imagerenderer/isopaque) A Boolean value that indicates whether the alpha channel of the image is fully opaque.
- [colorMode](/documentation/swiftui/imagerenderer/colormode) The working color space and storage format of the image.
- [allowedDynamicRange](/documentation/swiftui/imagerenderer/alloweddynamicrange) The allowed dynamic range of the image, or nil to mark that the dynamic range of the image should be unrestricted. This property defaults to , i.e. HDR content will be tone mapped to SDR.

## Rendering images

- [render(rasterizationScale:renderer:)](/documentation/swiftui/imagerenderer/render(rasterizationscale:renderer:)) Draws the renderer’s current contents to an arbitrary Core Graphics context.
- [cgImage](/documentation/swiftui/imagerenderer/cgimage) The current contents of the view, rasterized as a Core Graphics image.
- [nsImage](/documentation/swiftui/imagerenderer/nsimage) The current contents of the view, rasterized as an AppKit image.
- [uiImage](/documentation/swiftui/imagerenderer/uiimage) The current contents of the view, rasterized as a UIKit image.

## Producing a stream of images

- [objectWillChange](/documentation/swiftui/imagerenderer/objectwillchange) A publisher that informs subscribers of changes to the image.
- [isObservationEnabled](/documentation/swiftui/imagerenderer/isobservationenabled) If observers of this observed object should be notified when the produced image changes.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
