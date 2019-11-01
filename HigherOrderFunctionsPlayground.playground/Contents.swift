import UIKit

// Uncomment code if you want to play with it.

/**
 Custom  map
 */
/**
 let arrayOfIntegers = [1,2,3,4]
 var arrayOfStrings: [String] = []

 for i in arrayOfIntegers {
     arrayOfStrings.append(String(i))
 }

 print(arrayOfStrings) // "["1", "2", "3", "4"]
 */

/**
 Swift map
*/
/**
 let arrayOfIntegers = [1,2,3,4]
 let arrayOfStrings = arrayOfIntegers.map { String($0) }
 print(arrayOfStrings) // "["1", "2", "3", "4"]
 */

/**
 Wrong mapping
*/
/**
 let arrayOfIntegers = [1,2,nil,4]
 let arrayOfStrings = arrayOfIntegers.compactMap { $0 }
 print(arrayOfStrings) // ["Optional(1)", "Optional(2)", "nil", "Optional(4)"]
 */

/**
 CompactMap with map
*/
/**
 let arrayOfIntegers = [1, 2, nil, 4]
 let arrayOfStrings = arrayOfIntegers.compactMap { $0 }.map(String.init)
 print(arrayOfStrings) // "["1", "2", "4"]
 */

/**
 CompactMap with filtering
*/
/**
 let arrayOfIntegers = [1, 2, nil, 4]
 let arrayOfStrings = arrayOfIntegers.compactMap { optionalInteger -> String? in
     guard let integer = optionalInteger else { return nil }
     return String(integer)
 }
 print(arrayOfStrings) // "["1", "2", "4"]
 */

/**
 FlatMap wth CompactMap
*/
/**
 let arrayOfIntegers = [[1,3,5,nil],[2,nil,6]]
 let arrayOfStrings = arrayOfIntegers.flatMap { $0 }.compactMap { $0 }
 print(arrayOfStrings) // [1, 3, 5, 2, 6]
 */
