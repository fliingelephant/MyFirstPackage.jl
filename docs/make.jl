using MyFirstPackage
using Documenter

DocMeta.setdocmeta!(MyFirstPackage, :DocTestSetup, :(using MyFirstPackage); recursive=true)

makedocs(;
    modules=[MyFirstPackage],
    authors="Huanhai Zhou",
    sitename="MyFirstPackage.jl",
    format=Documenter.HTML(;
        canonical="https://fliingelephant.github.io/MyFirstPackage.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/fliingelephant/MyFirstPackage.jl",
    devbranch="main",
)
