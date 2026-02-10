// O(1) time complexity for each put() and get() operation
// O(n) space complexity

class LRUCache 
{
    private var capacity: Int
    private var cache: [Int:Int] = [:]
    private var keyOrder: [Int] = []

    init(_ capacity: Int) 
    {
        self.capacity = capacity
    }
    
    func get(_ key: Int) -> Int 
    {
        if let value = cache[key]
        {
            if let index = keyOrder.firstIndex(of: key)
            {
                keyOrder.remove(at: index)
            }

            keyOrder.append(key)

            return value
        }

        return -1
    }
    
    func put(_ key: Int, _ value: Int) 
    {
        if cache[key] != nil
        {
            if let index = keyOrder.firstIndex(of: key)
            {
                keyOrder.remove(at: index)
            }
        }
        else if cache.count >= capacity
        {
            if let lruKey = keyOrder.first
            {
                cache.removeValue(forKey: lruKey)
                keyOrder.removeFirst()
            }
        }

        cache[key] = value
        keyOrder.append(key)
    }
}

 import Testing

 extension Tag
 {
    @Tag extension var LRUCache: Self
 }

@Suite("LRUCache", . tags(.LRUCache))
 struct LRUCacheTests
 {
    @Test("Return Minus One When Try To Get Value Of Unexistent Key") 
    func returnMinusOneWhenTryToGetValueOfUnexistentKey()
    {
        LRUCache lRUCache = new LRUCache(2);

        let result: Int = lRUCache.get(1)

        #expect(result == -1)
    }
 }

/**
 * Your LRUCache object will be instantiated and called as such:
 * let obj = LRUCache(capacity)
 * let ret_1: Int = obj.get(key)
 * obj.put(key, value)
 */