require 'greek_abc/version'
require 'greek_abc/letter'
require 'greek_abc/alphabet'

module GreekABC
  class GreekABCError < StandardError; end
  class LetterLookupError < GreekABCError; end
  class LetterNotFoundError < GreekABCError; end

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
end
