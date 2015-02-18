# ExtendedArray #

Functional additions for Swift's built in Array type

## Installation

Note that `master` is currently source compatible with Swift 1.2, but not 1.1.
If you need 1.1 support, see the `swift-1.1` branch, and the 1.0.x series of
releases.

### [Carthage]

[Carthage]: https://github.com/Carthage/Carthage

Add the following to your Cartfile:

```
github "thoughtbot/ExtendedArray"
```

Then run `carthage update`.

Follow the current instructions in [Carthage's README][carthage-installation]
for up to date installation instructions.

[carthage-installation]: https://github.com/Carthage/Carthage#adding-frameworks-to-an-application

### [CocoaPods]

[CocoaPods]: http://cocoapods.org

_coming soon_

### Git Submodules

I guess you could do it this way if that's your thing.

Add this repo as a submodule, and add the project file to your workspace. You
can then link against `ExtendedArray.framework` for your application target.

## What's Included

`ExtendedArray` introduces 2 new functions to help with Array manipulation:

```swift
/**
    Return an array of the unwrapped .Some values from an array

    This will unwrap any values that are .Some, and strip out any values that
    are .None

    :param: xs An array of optional values

    :returns: An array of unwrapped optional values
*/
public func catOptionals<T>(xs: [T?]) -> [T] { // snip }

/**
    Return an array (wrapped in .Some) of values if all values contained by
    the array are also .Some

    Otherwise, if any value inside the provided array is .None, this will
    return .None

    :param: xs An array of optional values

    :returns: An optional array of values
*/
public func sequence<T>(xs: [T?]) -> [T]? { // snip }
```
