import HTTP
import Fiber
import TrisProject

async.use(Fiber.self)

async.main {
    let server = try Server(host: "localhost", port: 8080)
    try registerRoutes(in: server)
    try server.start()
}

async.loop.run()
