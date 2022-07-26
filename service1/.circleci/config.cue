package config

version: "2.1"

jobs: {
	"service1-say-hello": {
		docker: [
			{image: "cimg/base:stable"},
		]
		steps: [
			"checkout",
			{
				run: {
					name:    "Say hello"
					command: "echo Hello, World!1"
				}
			},
		]
	}
}

workflows: {
	"service1-say-hello-workflow":
	{
		jobs: [
			"common-say-hello",
			"service1-say-hello",
		]
	}
}
