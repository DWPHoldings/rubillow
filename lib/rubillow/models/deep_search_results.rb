module Rubillow
  module Models
    # List of comps for a given property with deep data.
    class DeepSearchResults < Base
      # @return [Hash] results list
      attr_accessor :results
      
      protected
      
      # @private
      def parse
        super
        
        return if !success?
        
        @results = Array.new
        @parser.xpath('//result').each do |elm|
          # puts elm.to_s
          # key = elm.attribute('zpid').value
          @results.push DeepSearchResult.new(elm.to_xml)
        end
      end
    end
  end
end