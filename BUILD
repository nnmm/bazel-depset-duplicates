load("@pip_deps//:requirements.bzl", "requirement")

py_library(
	name = "foo",
	srcs = ["foo.py"],
	deps = [requirement("pydantic")]
)

py_library(
	name = "bar",
	srcs = ["bar.py"],
	deps = [requirement("pydantic")]
)

py_binary(
	name = "foobar",
	srcs = ["foobar.py"],
	deps = [
		":foo",
		":bar",
	]
)
