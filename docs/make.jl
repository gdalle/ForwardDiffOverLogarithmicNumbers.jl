using ForwardDiffOverLogarithmicNumbers
using Documenter

DocMeta.setdocmeta!(ForwardDiffOverLogarithmicNumbers, :DocTestSetup, :(using ForwardDiffOverLogarithmicNumbers); recursive=true)

makedocs(;
    modules=[ForwardDiffOverLogarithmicNumbers],
    authors="Guillaume Dalle <22795598+gdalle@users.noreply.github.com> and contributors",
    repo="https://github.com/gdalle/ForwardDiffOverLogarithmicNumbers.jl/blob/{commit}{path}#{line}",
    sitename="ForwardDiffOverLogarithmicNumbers.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://gdalle.github.io/ForwardDiffOverLogarithmicNumbers.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/gdalle/ForwardDiffOverLogarithmicNumbers.jl",
    devbranch="main",
)
