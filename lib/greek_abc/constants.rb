module GreekABC
  ALPHABET = {
    'Alpha' => 'α',
    'Beta' => 'β',
    'Gamma' => 'γ',
    'Delta' => 'δ',
    'Epsilon' => 'ε',
    'Zeta' => 'ζ',
    'Eta' => 'η',
    'Theta' => 'θ',
    'Iota' => 'ι',
    'Kappa' => 'κ',
    'Lambda' => 'λ',
    'Mu' => 'μ',
    'Nu' => 'ν',
    'Xi' => 'ξ',
    'Omicron' => 'ο',
    'Pi' => 'π',
    'Rho' => 'ρ',
    'Sigma' => 'σ',
    'Tau' => 'τ',
    'Upsilon' => 'υ',
    'Phi' => 'φ',
    'Chi' => 'χ',
    'Psi' => 'ψ',
    'Omega' => 'ω'
  }.freeze

  LOWERS = ALPHABET.values.freeze
  UPPERS = LOWERS.map(&:upcase).freeze
  LOWERS_AND_UPPERS = (LOWERS + UPPERS).freeze
end
