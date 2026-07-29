import DynamicLatticeSystemsKineticIsingCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  latticeConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "dynamic-lattice-systems-kinetic-ising",
    theoremName := "Dynamic Lattice Systems Kinetic Ising",
    theoremObject := "ConstrainedKineticIsingClosure",
    classicalBoundary := "carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary",
    latticeConstrainedStatement := "lattice-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
    certificateLane := "lattice_constrained",
    carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
  }

end DynamicLatticeSystemsKineticIsingCanonicalLaneLean
end HautevilleHouse