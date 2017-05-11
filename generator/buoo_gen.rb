# coding: utf-8

Encoding.default_external = Encoding.default_internal = __ENCODING__

class String
  def wsc2buoo
    self.tr("STL", 'おぶー').gsub("\n", "").gsub(%r!([ぶおー]{5,20})ぶ!){"#{$1}\nぶ"}
  end
end

str = "Hello, Buooo!\n"

code = str.chars.map{|i| 'SS'  + ('0%b' % i.ord).tr('01', 'ST') + "L\nTLSS\n" } * "" + "LLL\n"
puts code
puts '----------'
puts code.wsc2buoo

ccode = <<EOS
SSSTSSTSSSL
TLSS
SSSTTSSTSTL
TLSS
SSSTTSTTSSL
TLSS
SSSTTSTTSSL
TLSS
SSSTTSTTTTL
TLSS
SSSTSTTSSL
TLSS
SSSTSSSSSL
TLSS
SSSTSSSSTSL
TLSS
SSSTTTSTSTL
TLSS
SSSTTSTTTTL
SLS
SLS
TLSS
TLSS
TLSS
SSSTSSSSTL
TLSS
SSSTSTSL
TLSS
LLL
EOS
puts '=========='
puts ccode
puts '----------'
puts ccode.wsc2buoo
