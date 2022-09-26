# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

email_addresses1 = "john@doe.com, person@somewhere.org"
email_addresses2 = "john@doe.com person@somewhere.org"
class EmailAddressParser
    attr_accessor :string

    def initialize(string)
        @string = string
    end

    def parse
        string_minus_commas = @string.delete(',')
        string_minus_commas.split(' ').uniq
    end



end


#if string contiains any commas, remove them
#split string by spaces

example = EmailAddressParser.new(email_addresses1+' '+email_addresses2)
puts example.parse