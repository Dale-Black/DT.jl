using DT
using Test

@testset "Scipy 1D" begin
    x = [1, 1, 0, 0]
    test = transform(x, Scipy())
    @test test == [2, 1, 0, 0]
end
