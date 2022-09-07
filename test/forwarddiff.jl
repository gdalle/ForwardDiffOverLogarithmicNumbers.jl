using ForwardDiff
using LogarithmicNumbers
using ForwardDiffOverLogarithmicNumbers

f(x) = exp(x)
g(x) = exp(Logarithmic, x)
h(x) = exp(ULogarithmic,x)

@test ForwardDiff.derivative(f, 1.) ≈ exp(1)
@test ForwardDiff.derivative(g, 1.) ≈ exp(1)
@test ForwardDiff.derivative(h, 1.) ≈ exp(1)
