using Plots;
using DifferentialEquations;

function one(du, u, p, t)
    du[1] = - 0.29*u[1] - 0.66*u[2] + sin(t) abs(cos(t+5))
    du[2] = -0.36*u[1] - 0.29*u[2] + cos(t)
end

function two(du, u, p, t)
    du[1] = - 0.31*u[1] - 0.71*u[2] + sin(0.2t)
    du[2] = (- 0.15*u[1] - 0.77)*u[2] + cos(0.2t)
end

const people = Float64[22000, 19000]
const prom1 = [0.0, 3.0]
const prom2 = [0.0, 0.0007]

prob1 = ODEProblem(one, people, prom1)
prob2 = ODEProblem(two, people, prom2)

sol1 = solve(prob1, dtmax=0.1)
sol2 = solve(prob2, dtmax=0.000001)

A1 = [u[1] for u in sol1.u]
A2 = [u[2] for u in sol1.u]
T1 = [t for t in sol1.t]
A3 = [u[1] for u in sol2.u]
A4 = [u[2] for u in sol2.u]
T2 = [t for t in sol2.t]

plt1 = plot(dpi = 300, legend= true, bg =:white)
plot!(plt1, xlabel="Время", ylabel="Численность", title="Модель боевых действий", legend=:outerbottom)
plot!(plt1, T1, A1, label="Численность армии X", color =:green)
plot!(plt1, T1, A2, label="Численность армии Y", color =:blue)
savefig(plt1, "lab3_1.png")

plt2 = plot(dpi = 1200, legend= true, bg =:white)
plot!(plt2, xlabel="Время", ylabel="Численность", title="Модель боевых действий", legend=:outerbottom)
plot!(plt2, T2, A3, label="Численность армии X", color =:green)
plot!(plt2, T2, A4, label="Численность армии Y", color =:blue)
savefig(plt2, "lab3_2.png")


