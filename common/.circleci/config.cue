package config

version: "2.1"

jobs: {
	"common-say-hello": {
		docker: [
			{image: "cimg/base:stable"},
		]
		steps: [
			"checkout",
			{
				run: {
					name:    "Say hello"
					command: "echo Hello, World! common"
				}
			},
		]
	}
}
