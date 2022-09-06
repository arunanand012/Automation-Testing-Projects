package examples.users

import com.intuit.karate.gatling.PreDef._
import io.gatling.core.Predef._
import scala.concurrent.duration._
import io.gatling.core.scenario.Simulation


class simulation_user extends Simulation {
val get_single_user = scenario("get all users and then get the first user by id").exec(karateFeature("src/test/java/examples/users/users.feature"))

  setUp {
get_single_user.inject(rampUsers(10).during(10 seconds))

}
}
