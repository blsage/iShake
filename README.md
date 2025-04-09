# UnionShake

A lightweight SwiftUI package for adding shake animations to any view with minimal code.

## Requirements

- iOS 14.0+
- macOS 11.0+
- tvOS 14.0+
- watchOS 7.0+
- Swift 6.0+

## Installation

### Swift Package Manager

Add iShake to your project through Swift Package Manager:

1. In Xcode, select **File** > **Add Package Dependencies...**
2. Enter the repository URL: 
   ```
   https://github.com/unionst/union-shake.git
   ```
3. Follow the prompts to complete the installation

Alternatively, add it directly to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/unionst/union-shake.git", from: "1.0.0")
]
```

## Usage

iShake provides a simple `.shake()` view modifier that can be applied to any SwiftUI view.

### Basic Example

```swift
import SwiftUI
import UnionShake

struct ContentView: View {
    @State private var trigger = false
    
    var body: some View {
        VStack {
            Text("Shake Me")
                .padding()
                .shake(on: trigger)
                .animation(.default, value: trigger)
                
            Button("Trigger Shake") {
                trigger.toggle()
            }
        }
    }
}
```

### Important Note

For the shake animation to be visible, you must apply an animation modifier to the view or one of its parent views. The animation should use the same trigger value that you pass to the shake modifier.

### Customization

The shake modifier accepts additional parameters to customize the animation:

```swift
Text("Custom Shake")
    .shake(
        on: trigger,       // Equatable value that triggers the shake
        amount: 10,        // Maximum displacement in points (default: 5)
        shakesPerUnit: 5   // Number of oscillations (default: 3)
    )
    .animation(.easeInOut(duration: 0.5), value: trigger)
```

## Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `trigger` | `T: Equatable` | (required) | Value that triggers the shake animation when changed |
| `amount` | `CGFloat` | `5` | Maximum displacement in points |
| `shakesPerUnit` | `CGFloat` | `3` | Number of oscillations per animation unit |

## License

UnionShake is available under the MIT license. 
