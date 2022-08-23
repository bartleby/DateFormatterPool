// Copyright (c) 2022 iDevs.io. All rights reserved.

import Foundation

final class DateFormatterContainer {
    
    // MARK: - Properties
    private var pool = [String: DateFormatter]()
    
    // MARK: - Singleton
    public static let shared = DateFormatterContainer()
    
    // MARK: - Init/Deinit
    private init() {}
    
    // MARK: - Public methods
    public func obtain(format: DateFormat) -> DateFormatter {
        let key = format.value
        
        if let formatter = pool[key] {
            return formatter
        }
        
        let formatter = DateFormatter()
        formatter.dateFormat = key
        pool[key] = formatter
        
        return formatter
    }
}
