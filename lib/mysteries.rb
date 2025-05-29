
module Mysteries
  class JoyfulM
    def self.read
      exec "cd #{__dir__} && cd guides/ && less JOYFUL-MYSTERIES"
    end  
  end

  class SorrowfulM
    def self.read
      exec "cd #{__dir__} && cd guides/ && less SORROWFUL-MYSTERIES"
    end
  end

  class GloriousM
    def self.read
      exec "cd #{__dir__} && cd guides/ && less GLORIOUS-MYSTERIES"
    end
  end

  class LuminousM
    def self.read
      exec "cd #{__dir__} && cd guides/ && less LUMINOUS-MYSTERIES"
    end
  end
end
