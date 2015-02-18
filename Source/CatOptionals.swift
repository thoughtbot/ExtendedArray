/**
    Return an array of the unwrapped .Some values from an array

    This will unwrap any values that are .Some, and strip out any values that are .None

    :param: xs An array of optional values

    :returns: An array of unwrapped optional values
*/
public func catOptionals<T>(xs: [T?]) -> [T] {
    return xs.reduce([]) { accum, elem in
        return elem.map { accum + [$0] } ?? accum
    }
}
