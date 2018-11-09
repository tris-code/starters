import Web

final class TestController: Controller, InjectService {
    let repository: TestRepository

    init(_ repository: TestRepository) {
        self.repository = repository
    }

    static func setup(router: Router<TestController>) throws {
        router.route(get: "", to: get)
        router.route(get: "/welcome", to: welcome)
    }

    func get() -> String {
        return "Tris.MVC.Application.TestController"
    }

    func welcome() -> String {
        return repository.getRandomMessage() ?? "🤷‍♂️"
    }
}
