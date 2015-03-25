require 'rexml/document'

module ApiUtils

  def self.camelize_with_space(str)
    str.split('_').map {|w| w.capitalize}.join(' ')
  end

  def self.string_to_method_name(s)
    s.gsub(' ', '_').downcase
  end

  def self.string_to_symbol(s)
    s.gsub!(/[()%]*/, '')
    s.gsub(/[\s\/]/, '_').downcase.to_sym
  end

  def self.symbol_to_string(sym)
    sym.class == Symbol ? self.camelize_with_space(sym.to_s) : self.camelize_with_space(sym)
  end

end
