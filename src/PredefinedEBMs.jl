using DifferentialEquations


"""
    SimplestModel(u0=[273.],p=[0.3, 1363., 5.67e-8],t=(0.,2.5))

Returns an ODEProblem of the simplest EBM SimplestModel

---
#Arguments:
- 'u0::Array{Float64, 1}': Initial conditions (Array of length 1)
- 'p::Array{Float64, 1}': Parameters representing α, S₀ and σ
- 't::Tuple{Float64, Float64}': timeargument for the ODEProblem

---
#Returns:
- ODEProblem object
"""
function SimplestModel(u0=273.,p=[0.3, 1363., 5.67e-8],t=(0.,2.5)) 
    function f(u,p,t)
        α, S₀, σ = p 
        return (1 - α)*(S₀/4) - σ*u[1]^4
    end
    prob = ODEProblem(f,u0,t,p)
    return prob
end 

solve(SimplestModel())