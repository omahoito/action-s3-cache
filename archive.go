package main

import (
	"github.com/mholt/archiver/v3"
)

func Zip(filename string, artifacts []string) error {
	err := archiver.Archive(artifacts, filename)
	if err != nil {
		return err
	}

	return nil
}

func Unzip(filename string) error {
	err := archiver.Unarchive(filename, ".")
	if err != nil {
		return err
	}

	return nil
}
