import Web

public class TrisProject: Bootstrap {
    public init() {}

    public func configure(services: Services) throws {
        try services.register(
            singleton: InMemoryTestRepository.self,
            as: TestRepository.self)
    }

    public func configure(application: MVC.Application) throws {
        application.basePath = "/api"

        try application.addApplication(basePath: "/v0") { v0 in
            try v0.addController(TestController.self)
        }
        
    }

    public func configure(application: HTTP.Application) throws {
        application.route(get: "/") {
            return "Tris.HTTP.Application"
        }    
    }
}
