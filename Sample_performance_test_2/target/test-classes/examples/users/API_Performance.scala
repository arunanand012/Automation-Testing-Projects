package examples.users

import com.intuit.karate.gatling.PreDef._
import io.gatling.core.Predef._
import io.gatling.core.scenario.Simulation
import scala.concurrent.duration.DurationInt
import scala.language.postfixOps

class API_Performance extends Simulation{
  val get_single_user = scenario(" check the status code").exec(karateFeature("src/test/java/examples/users/users.feature"))
  val page_of_user = scenario("check the status code for page number 2").exec(karateFeature("src/test/java/examples/users/users.feature"))
  val data_of_unknown_user = scenario("check the status code for un found user data").exec(karateFeature("src/test/java/examples/users/users.feature"))
  val Create_new_data = scenario("Send the request to and check the status").exec(karateFeature("src/test/java/examples/users/users.feature"))

  setUp {
    get_single_user.inject(rampUsers(100).during(30 second))
    page_of_user.inject(rampUsers(10).during(10 second))
    data_of_unknown_user.inject(rampUsers(5)during(5 second))
    Create_new_data.inject(rampUsers(5)during(10 second))

  }
}
