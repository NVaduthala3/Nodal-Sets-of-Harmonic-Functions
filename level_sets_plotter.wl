ClearAll[u,theta,r,1]; (* because we are on unit disk, the value is 1. Otherwise can be any n > 0 *)
partial_de = D[u[r,theta], {r,2}]+1/r D[u[r, theta], r] + 1/r^2 D[u[r, theta], {theta, 2}]==0; (* Because domain is the unit disk, the Laplace eqn is in polar cordinates *)
boundary_cond = u[1,theta]==func[theta];
solution = NDSolve[{pde,bc}, u[r, theta], {r, theta}, Assumptions->a<r&&a>0&&0<theta<=2 Pi]
ContourPlot[{solution = g[r, theta], {r, 0, 1}, {theta, 0, 2 Pi}] (* Let g = 0 to find nodal sets *)
