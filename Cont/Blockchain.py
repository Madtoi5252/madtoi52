import hashlib
import time

class Block:
    def __init__(self, index, timestamp, data, previous_hash):
        self.index = index
        self.timestamp = timestamp
        self.data = data
        self.previous_hash = previous_hash
        self.hash = self.compute_hash()
    def compute_hash(self):
        block_string = f"{self.index}--{self.timestamp}--{self.data}--{self.previous_hash}"
        return hashlib.sha256(block_string.encode()).hexdigest()

class Blockchain:
    def __init__(self):
        self.chain = [self.create_genesis_block()]
    def create_genesis_block(self):
        return Block(0, time.time(), "Genesis Block", "0")
    def get_last_block(self):
        return self.chain[-1]
    def add_block(self, data):
        last_block = self.get_last_block()
        new_block = Block(len(self.chain), time.time(), data, last_block.hash)
        self.chain.append(new_block)

blockchain = Blockchain()

print("\nGenesis Block:\n", vars(blockchain.chain[0]))

blockchain.add_block("First Block after Genesis")
print("\nNew Block:\n", vars(blockchain.chain[1]))

blockchain.add_block("Second Block after Genesis")
print("\nNew Block:\n", vars(blockchain.chain[2]))

blockchain.add_block("Third Block after Genesis")
print("\nNew Block:\n", vars(blockchain.chain[3]))
