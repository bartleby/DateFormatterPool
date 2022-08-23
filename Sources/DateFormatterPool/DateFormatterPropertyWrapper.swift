// Copyright (c) 2022 iDevs.io. All rights reserved.

import Foundation

@propertyWrapper
public final class DateFormatterPool {
    
    // MARK: - Properties
    private let format: DateFormat
    private var dateFormatterContainer = DateFormatterContainer.shared
    public var wrappedValue: DateFormatter { value }
    
    // MARK: - Lazy Properties
    private lazy var value: DateFormatter = {
        dateFormatterContainer.obtain(format: format)
    }()
    
    
    // MARK: - Init/Deinit
    init(_ format: DateFormat) {
        self.format = format
    }
}
