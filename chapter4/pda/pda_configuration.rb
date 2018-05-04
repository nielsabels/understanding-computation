class PDAConfiguration < Struct.new(:state, :stack)
    STUCK_STATE = Object.new

    def to_s
        "<PDAConfiguration 
        state=#{state}
        stack=\"#{stack}\">" 
    end

    def stuck
        PDAConfiguration.new(STUCK_STATE, stack)
    end

    def is_stuck?
        @STUCK_STATE
    end
end