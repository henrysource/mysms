require "mysms/version"
require "socket"

module Mysms
	class Client
		def initialize(key,secret)
			@key,@secret = key, secret # cid,spw
			@host = "mysms.com.tw"
			@port = "80"

			s = TCPSocket.open(host,port)

			while line = s.gets
				puts line.chop
			end

			s.close
		end

		attr_accessor :key,:secret,:host,:port

		def send_message(data)
#			response = @http.post('/mysms/ApSendSMS.php',encode(data),headers)	
		end

	end

end
