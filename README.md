# RNDeviceName

Swift library to get Apple device model name.
Gets the marketing name from Apple devices, such as "iPhone 13 mini.


## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org)
To integrate RNDeviceName into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'RNDeviceName'
```

### Swift Package Manager

[Swift Package Manager](https://swift.org/package-manager/)
Once you have your Swift package set up, 
1. Add `RNDeviceName` to the `dependencies` value of your `Package.swift`.
```swift
dependencies: [
    .package(url: "https://github.com/souzainf3/RNDeviceName.git", .upToNextMajor(from: "1.0.0")) // set you tag or branch
]
```

2. Open Swift Package Manager, copy https://github.com/souzainf3/RNDeviceName to the search bar
For version, you may use tags or master branch.


### Manually

1. Drag `Sources` folder to your project


## Usage
Gets Apple device marketing name, such as "iPhone 13 mini"

### UIDevice extension

```swift
UIDevice.current.marketingName // iPhone 13 Mini
```

### Device class

```swift
Device.current.marketingName // iPhone 13 Mini
```
