module Crabstone
  module PPC
    REG_LOOKUP = {
      "INVALID" => 0,
      "CARRY" => 1,
      "CR0" => 2,
      "CR1" => 3,
      "CR2" => 4,
      "CR3" => 5,
      "CR4" => 6,
      "CR5" => 7,
      "CR6" => 8,
      "CR7" => 9,
      "CR8" => 10,
      "CR9" => 11,
      "CR10" => 12,
      "CR11" => 13,
      "CR12" => 14,
      "CR13" => 15,
      "CR14" => 16,
      "CR15" => 17,
      "CR16" => 18,
      "CR17" => 19,
      "CR18" => 20,
      "CR19" => 21,
      "CR20" => 22,
      "CR21" => 23,
      "CR22" => 24,
      "CR23" => 25,
      "CR24" => 26,
      "CR25" => 27,
      "CR26" => 28,
      "CR27" => 29,
      "CR28" => 30,
      "CR29" => 31,
      "CR30" => 32,
      "CR31" => 33,
      "CTR" => 34,
      "F0" => 35,
      "F1" => 36,
      "F2" => 37,
      "F3" => 38,
      "F4" => 39,
      "F5" => 40,
      "F6" => 41,
      "F7" => 42,
      "F8" => 43,
      "F9" => 44,
      "F10" => 45,
      "F11" => 46,
      "F12" => 47,
      "F13" => 48,
      "F14" => 49,
      "F15" => 50,
      "F16" => 51,
      "F17" => 52,
      "F18" => 53,
      "F19" => 54,
      "F20" => 55,
      "F21" => 56,
      "F22" => 57,
      "F23" => 58,
      "F24" => 59,
      "F25" => 60,
      "F26" => 61,
      "F27" => 62,
      "F28" => 63,
      "F29" => 64,
      "F30" => 65,
      "F31" => 66,
      "LR" => 67,
      "R0" => 68,
      "R1" => 69,
      "R2" => 70,
      "R3" => 71,
      "R4" => 72,
      "R5" => 73,
      "R6" => 74,
      "R7" => 75,
      "R8" => 76,
      "R9" => 77,
      "R10" => 78,
      "R11" => 79,
      "R12" => 80,
      "R13" => 81,
      "R14" => 82,
      "R15" => 83,
      "R16" => 84,
      "R17" => 85,
      "R18" => 86,
      "R19" => 87,
      "R20" => 88,
      "R21" => 89,
      "R22" => 90,
      "R23" => 91,
      "R24" => 92,
      "R25" => 93,
      "R26" => 94,
      "R27" => 95,
      "R28" => 96,
      "R29" => 97,
      "R30" => 98,
      "R31" => 99,
      "V0" => 100,
      "V1" => 101,
      "V2" => 102,
      "V3" => 103,
      "V4" => 104,
      "V5" => 105,
      "V6" => 106,
      "V7" => 107,
      "V8" => 108,
      "V9" => 109,
      "V10" => 110,
      "V11" => 111,
      "V12" => 112,
      "V13" => 113,
      "V14" => 114,
      "V15" => 115,
      "V16" => 116,
      "V17" => 117,
      "V18" => 118,
      "V19" => 119,
      "V20" => 120,
      "V21" => 121,
      "V22" => 122,
      "V23" => 123,
      "V24" => 124,
      "V25" => 125,
      "V26" => 126,
      "V27" => 127,
      "V28" => 128,
      "V29" => 129,
      "V30" => 130,
      "V31" => 131,
      "VRSAVE" => 132,
      "RM" => 133,
      "CTR8" => 134,
      "LR8" => 135,
      "CR1EQ" => 136
    }

    ID_LOOKUP = REG_LOOKUP.invert
    SYM_LOOKUP = Hash[REG_LOOKUP.map {|k,v| [k.downcase.to_sym,v]}]

    def self.register reg
      return reg if ID_LOOKUP[reg]
      return SYM_LOOKUP[reg] if SYM_LOOKUP[reg]
      if reg.respond_to? :upcase
        return REG_LOOKUP[reg.upcase] || REG_LOOKUP['INVALID']
      end
      REG_LOOKUP['INVALID']
    end

  end
end
