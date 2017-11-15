job "Run_Checkbox" {
  datacenters = [ "dc1" ]
  group "default" {
    count = 1
    task "webservice" {
      driver = "exec"

      config {
        command = "/bin/sh"
        args    = ["/home/ubuntu/serverscript.sh"]
      }

      resources {
        cpu = 500
        memory = 256
      }
    } 
  }
}