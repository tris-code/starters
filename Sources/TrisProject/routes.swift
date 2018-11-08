import HTTP

public func registerRoutes(in server: Server) throws {
    server.route(get: "/") {
        return "Tris.HTTP starter"
    }
}
