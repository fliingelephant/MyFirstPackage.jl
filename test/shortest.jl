using Test
using Graphs

using MyFirstPackage

@testset "shortest path" begin
    g = smallgraph(:petersen)
    shortest_paths_mat = shortest_paths(g)
    dijkstra_shortest_paths_mat = hcat([dijkstra_shortest_paths(g, i).dists for i in 1:nv(g)]...)

    @test isapprox(getfield.(shortest_paths_mat, :n), dijkstra_shortest_paths_mat)
end
