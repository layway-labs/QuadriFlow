load("//3rd:lemon_repo.bzl", "lemon")

def _non_module_dependencies_impl(_ctx):
    lemon()

non_module_dependencies = module_extension(
    implementation = _non_module_dependencies_impl,
)
