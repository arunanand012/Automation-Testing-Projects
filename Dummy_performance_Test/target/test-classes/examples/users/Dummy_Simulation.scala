package examples.users

import com.intuit.karate.gatling.PreDef._
import com.intuit.karate.gatling.PreDef.karateFeature
import io.gatling.core.Predef._
import scala.concurrent.duration._
import io.gatling.core.scenario.Simulation
import scala.language.postfixOps


class simulation_user extends Simulation {
  val get_all_employee = scenario("Get the all employee data").exec(karateFeature("src/test/java/examples/users/users.feature"))
  val get_single_employee = scenario("get single employee data").exec(karateFeature("src/test/java/examples/users/users.feature"))
  val create = scenario("create a new customer").exec(karateFeature("src/test/java/examples/users/users.feature"))
  val update = scenario("update the employee data").exec(karateFeature("src/test/java/examples/users/users.feature"))
  val delete = scenario("delete the employee data ").exec(karateFeature("src/test/java/examples/users/users.feature"))
  setUp {
    get_all_employee.inject(rampUsers(10).during(10 second))
    get_single_employee.inject(rampUsers(10).during(10 second))
    create.inject(rampUsers(10).during(10 second))
    update.inject(rampUsers(10).during(10 second))
    delete.inject(rampUsers(10).during(10 second))
  }
}
