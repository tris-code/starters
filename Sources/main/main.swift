import Fiber
import TrisProject

async.use(Fiber.self)

async.main {
    _ = TrisProject()
}

async.loop.run()
