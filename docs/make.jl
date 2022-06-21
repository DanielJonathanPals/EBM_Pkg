using EBM_Pkg
using Documenter

DocMeta.setdocmeta!(EBM_Pkg, :DocTestSetup, :(using EBM_Pkg); recursive=true)

makedocs(;
    modules=[EBM_Pkg],
    authors="Daniel Pals <Daniel.Pals@tum.de>",
    repo="https://github.com/DanielJonathanPals/EBM_Pkg.jl/blob/{commit}{path}#{line}",
    sitename="EBM_Pkg.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)
