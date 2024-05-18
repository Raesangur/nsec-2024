import io
import serial

port = serial.Serial("/dev/ttyACM0", baudrate = 115200)

# read one char (default)
def read_ser(num_char = 1):
	string = port.read(num_char)
	return str(string)

# Write whole strings
def write_ser(cmd):
	cmd = cmd + '\n'
	port.write(cmd.encode())

while True:
    string = read_ser(255)
    if(len(string)):
        print(string)

    cmd = input() # Blocking, there're solutions for this ;)
    if(cmd):
        write_ser(cmd)
