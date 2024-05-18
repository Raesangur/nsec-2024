from pymodbus.client import ModbusTcpClient

# Modbus server IP address and port
SERVER_IP = "192.168.4.1"
SERVER_PORT = 502

# Modbus device ID (slave address)
DEVICE_ID = 1

# Starting address and number of registers to read
START_ADDRESS = 0
NUM_REGISTERS = 99

# Create a Modbus TCP client
client = ModbusTcpClient(SERVER_IP, SERVER_PORT)

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

finally:
    # Close the Modbus connection
    client.close()
