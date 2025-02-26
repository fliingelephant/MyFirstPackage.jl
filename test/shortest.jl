using Test
using Graphs

using MyFirstPackage

@testset "shortest path" begin
    g = smallgraph(:petersen)
    shortest_paths_mat = shortest_paths(g)

    dijkstra_shortest_paths_mat = hcat([dijkstra_shortest_paths(g, i).dists for i in 1:nv(g)]...)
    for i in 1:nv(g)
        for j in 1:nv(g)
            @test isapprox(shortest_paths_mat[i,j], dijkstra_shortest_paths_mat[i,j])
        end
    end
end
