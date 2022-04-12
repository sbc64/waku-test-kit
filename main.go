package main

import (
	"os/exec"
)

type Config struct {
	Pk   string
	Port int
}

func main() {
	cmd := exec.Command("sh", "-c", "docker run statusteam/nim-waku:deploy-v2-prod --help")
	_, err := cmd.CombinedOutput()
	if err != nil {
		//log.Fatal(err)
	}
	//fmt.Printf("%s\n", stdoutStderr)
}
