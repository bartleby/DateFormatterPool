<p align="center">
  <img src="/Images/header.png">
</p>

Date Formatter Pool
========

Date Formatter Pool - is a small utility that creates and stores your `Date Formatter` for simpler reuse

## Installation

is available in the [Swift Package Manager](https://swift.org/package-manager/).

### Swift Package Manager

```
https://github.com/bartleby/DateFormatterPool.git
```


## Basic Usage

First, add a your `format` to a `Pool`, through the expansion of `DateFormat`


```swift
extension DateFormat {
    static let shortDateAndTime = DateFormat(value: "MMM d, E 'at' HH:mm")
    static let shortDay = DateFormat(value: "d")
    static let shortMonth = DateFormat(value: "MMM")
    static let monthAndYear = DateFormat(value: "LLLL YYYY")
    static let shortWeekName = DateFormat(value: "EE")
}
```

On this site you can create the format you need: [nsdateformatter.com](https://nsdateformatter.com)



Then get an `DateFormatter` from the pool using `PropertyWrapper`.

```swift
struct ContentView: View {
    @DateFormatterPool(.shortDateAndTime) var shortDateAndTimeFormatter
    
    var body: some View {
        VStack {
            Text(shortDateAndTimeFormatter.string(from: Date())) // Aug 23, Tue at 12:10
        }
    }
}
``` 

or in ViewModel

```swift
final class ViewModel {
    @Published var dateString: String
    
    @DateFormatterPool(.shortDateAndTime) var shortDateAndTimeFormatter
    
    //...
    
    func configure() {
        dateString = shortDateAndTimeFormatter.string(from: Date())) // Aug 23, Tue at 12:10
    }
}
``` 


## Example Apps

Coming soon


## License

MIT license. See the [LICENSE file](LICENSE) for details.
