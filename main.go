package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"strconv"
	"time"
)

var (
	folderPath string = "/srv/erase-una-vez"
	sleepTime  int    = 5
)

func main() {
	for {
		// get hostname from os
		hostname, err := os.Hostname()
		if err != nil {
			log.Fatalln("Error al obtener el hostname.")
		}

		// count files in folder
		files, err := ioutil.ReadDir(folderPath)
		if err != nil {
			log.Fatal(err)
		}
		countFiles := len(files)
		// print message
		fmt.Printf("hostname: %s - total de ficheros: %d\n", hostname, countFiles)

		// create new file
		name := fmt.Sprintf("%s/%s-%d", folderPath, hostname, time.Now().Unix())
		file, err := os.OpenFile(name, os.O_RDONLY|os.O_CREATE, 0644)
		if err != nil {
			log.Fatal(err)
		}
		file.Close()

		// sleep time
		if len(os.Getenv("SLEEP_TIME")) != 0 {
			sleepTime, err = strconv.Atoi(os.Getenv("SLEEP_TIME"))
		}
		time.Sleep(time.Duration(sleepTime) * time.Second)
	}
}
