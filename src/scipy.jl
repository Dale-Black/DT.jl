abstract type D end

"""
```julia
struct Scipy <: DT end
```

Exact euclidean algorithm ported from [Scipy](https://docs.scipy.org/doc/scipy/reference/generated/scipy.ndimage.distance_transform_edt.html)
"""
struct Scipy <: D end

ndimage = scipy.ndimage

function transform(array, tfm::Scipy)
    return pyconvert(Array{Float32}, ndimage.distance_transform_edt(array))
end
