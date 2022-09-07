using ForwardDiff
using LogarithmicNumbers
using ForwardDiffOverLogarithmicNumbers

f(x) = exp(x)
g(x) = exp(Logarithmic, x)

@test ForwardDiff.derivative(f, 1.) ≈ exp(1)
@test_broken ForwardDiff.derivative(g, 1.) ≈ exp(1)
