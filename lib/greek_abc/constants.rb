# frozen_string_literal: true

module GreekABC
  #
  # Hash of full letter names and their lowercase representation variant(s)
  #
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
    'Sigma' => %w[σ ς],
    'Tau' => 'τ',
    'Upsilon' => 'υ',
    'Phi' => 'φ',
    'Chi' => 'χ',
    'Psi' => 'ψ',
    'Omega' => 'ω'
  }.freeze
end
