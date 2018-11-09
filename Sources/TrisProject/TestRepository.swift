import Web

protocol TestRepository: Inject {
    func getRandomMessage() -> String?   
}

final class InMemoryTestRepository: TestRepository {
    private var messages: [String] = ["Hello", "Hi", "Hey"]

    init() {}

    func getRandomMessage() -> String? {
        return messages.randomElement()
    }
}
