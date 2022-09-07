module ForwardDiffOverLogarithmicNumbers

using ForwardDiff: ForwardDiff, Dual
using LogarithmicNumbers: LogarithmicNumbers, AnyLogarithmic, Logarithmic, ULogarithmic

## Promotion rules

function Base.promote_rule(::Type{Logarithmic{R}}, ::Type{Dual{T,V,N}}) where {R,T,V,N}
    return Dual{T,promote_rule(Logarithmic{R}, V),N}
end

function Base.promote_rule(::Type{ULogarithmic{R}}, ::Type{Dual{T,V,N}}) where {R,T,V,N}
    return Dual{T,promote_rule(ULogarithmic{R}, V),N}
end

## LN constructors?

#Based on the unary_definition macro in ForwardDiff.jl
# https://github.com/JuliaDiff/ForwardDiff.jl/blob/6a6443b754b0fcfb4d671c9a3d01776df801f498/src/dual.jl#L230-L244
function Base.exp(::Type{ULogarithmic}, d::Dual{T,V,N}) where {T,V,N}
    x = ForwardDiff.value(d)
    val = exp(ULogarithmic,x)
    deriv = exp(ULogarithmic,x)
    return ForwardDiff.dual_definition_retval(Val{T}(),val,deriv,ForwardDiff.partials(d))
end

function Base.exp(::Type{Logarithmic}, d::Dual{T,V,N}) where {T,V,N}
    x = ForwardDiff.value(d)
    val = exp(Logarithmic,x)
    deriv = exp(Logarithmic,x)
    return ForwardDiff.dual_definition_retval(Val{T}(),val,deriv,ForwardDiff.partials(d))
end
end
