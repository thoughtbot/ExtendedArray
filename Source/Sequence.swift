/**
    Return an array (wrapped in .Some) of values if all values contained by the array are also .Some

    Otherwise, if any value inside the provided array is .None, this will return .None

    :param: xs An array of optional values

    :returns: An optional array of values
*/
public func sequence<T>(xs: [T?]) -> [T]? {
    return reduce(xs, []) { accum, elem in
        if let x = elem, xs = accum {
            return xs + [x]
        }

        return .None
    }
}
