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

end
