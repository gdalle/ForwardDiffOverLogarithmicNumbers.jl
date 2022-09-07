using ForwardDiff
using LogarithmicNumbers
using ForwardDiffOverLogarithmicNumbers

f(x) = exp(x)
g(x) = exp(Logarithmic, x)
h(x) = exp(ULogarithmic,x)

@test ForwardDiff.derivative(f, 1.) ≈ exp(1)
#ideally, test over ranges where any unwanted conversion would overflow
@test ForwardDiff.derivative(g, 1000.0) ≈ exp(Logarithmic,1000.0)
@test ForwardDiff.derivative(h, 1000.0) ≈ exp(ULogarithmic,1000.0)
