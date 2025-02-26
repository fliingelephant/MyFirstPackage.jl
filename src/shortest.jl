function shortest_paths(g::Graph)
    (map(x->iszero(x) ? zero(TropicalMinPlus{Float64}) : TropicalMinPlus(1.0),
        adjacency_matrix(g)) + Diagonal(fill(TropicalMinPlus(0.0), nv(g))))^nv(g)
end