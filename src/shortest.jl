using Base
using LinearAlgebra
using FastPow
using Graphs
using TropicalNumbers

function shortest_paths(g::Graph)
    @fastpow (map(x->iszero(x) ? zero(TropicalMinPlus{Float64}) : TropicalMinPlus(1.0),
        adjacency_matrix(g)) + Diagonal(fill(TropicalMinPlus(0.0), nv(g))))^nv(g)
end

Base.isapprox(a::TropicalMinPlus{T1}, b::T2) where {T1, T2<:Number} = isapprox(a.n, b)