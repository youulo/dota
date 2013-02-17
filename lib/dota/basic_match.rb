module Dota
  class BasicMatch
    attr_reader :raw_match

    # Initializes a new Match object
    #
    # @param raw_match [Hash]
    def initialize(raw_match)
      @raw_match = raw_match
    end

    # Match id
    #
    # @return [Integer]
    def id
      raw_match['match_id']
    end

    # Match sequence number
    #
    # @return [Integer]
    def seq_num
      raw_match['match_seq_num']
    end

    # Match's start time
    #
    # @return [Time]
    def start
      Time.at(raw_match['start_time'])
    end

    # The type of lobby
    #
    # @return [String]
    def lobby
      Lobbies[raw_match['lobby_type']]
    end

    # @private
    def inspect
      "#<#{self.class.name}:0x#{(object_id << 1).to_s(16)}>"
    end
  end
end