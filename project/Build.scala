import sbt._
import Keys._
import play.Project._

object ApplicationBuild extends Build {

  val appName         = "grabar-usuario-proveedor"
  val appVersion      = "1.0-SNAPSHOT"

  val appDependencies = Seq(
    // Add your project dependencies here,
    javaCore,
    javaJdbc,
    javaEbean,
    "postgresql" % "postgresql" % "9.1-901.jdbc4",
    "org.hsqldb" % "hsqldb" % "2.3.0"
  )

  val main = play.Project(appName, appVersion, appDependencies).settings(
    // Add your own project settings here      
  )

}
