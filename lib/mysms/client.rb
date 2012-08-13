require 'socket'
module Mysms
	class Client
		def send_sms(user,passwd,message,number,time,type)
			host = "mysms.com.tw"
			port = "80"

			send_msg="CID=#{user}&CPW=#{passwd}&M=#{message}&N=#{number}"
			
			if type == "y"
				send_msg+="&T=#{time}"
			end 
			
			client = TCPSocket.open(host,port)
			optval = client.getsockopt(Socket::SOL_TCP, 11) 
  			state = optval.unpack "i" 
  			num = send_msg.length

  			if state
  				msgdata = ""
  				msgdata += "POST /mysms/ApSendSMS.php HTTP/1.1\r\n"
				msgdata += "Host: #{host}\r\n"
				msgdata += "Content-Length: #{num}\r\n"
				msgdata += "Content-Type: application/x-www-form-urlencoded\r\n"
				msgdata += "Connection: Close\r\n\r\n"
				msgdata += "#{send_msg}\r\n"
  				client.write(msgdata)

  				resp_str = ""
  				while line = client.gets 
					resp_str += line
				end
  			end
  			client.close
		end
	end
end