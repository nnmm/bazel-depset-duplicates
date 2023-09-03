DepsInfo = provider(fields = ["x"])

def _impl(target, ctx):
    deps = ctx.rule.attr.deps or []
    set = depset(
    	direct = deps,
    	transitive = [dep[DepsInfo].x for dep in deps]
    )
    print("In {}, deps are {}".format(target.label, set.to_list()))
    return [DepsInfo(x = set)]

deps_aspect = aspect(
    implementation = _impl,
    attr_aspects = ["deps"],
)
