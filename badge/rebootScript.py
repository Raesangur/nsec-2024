import io
import serial

port = serial.Serial("/dev/ttyACM0", baudrate = 115200)

# read one char (default)
def read_ser(num_char = 1):
	string = port.read(num_char).decode("utf-8")
	return string

# Write whole strings
def write_ser(cmd):
	cmd = cmd + '\n'
	port.write(cmd.encode())

string = ""
while True:
    c = read_ser(1)
    if("\n" in c):
        print(string)
        string = ""
    else:
        string += c

#    cmd = input() # Blocking, there're solutions for this ;)
#    if(cmd):
#        write_ser(cmd)
