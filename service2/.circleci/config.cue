package config

version: "2.1"

jobs: {
	"service2-say-hello": {
		docker: [
			{image: "cimg/base:stable"},
		]
		steps: [
			"checkout",
			{
				run: {
					name:    "Say hello"
					command: "echo Hello, World!2"
				}
			},
		]
	}
}

workflows: {
	"service2-say-hello-workflow":
	{
		jobs: [
			"common-say-hello",
			"service2-say-hello",
		]
	}
}
