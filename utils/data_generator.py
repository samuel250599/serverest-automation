from faker import Faker

class DataGenerator:
    def __init__(self):
        self.fake = Faker('pt_BR')
    
    def user_data(self, administrador=True):
        return {
            "nome": self.fake.name(),
            "email": self.fake.email(),
            "password": self.fake.password(length=12),
            "administrador": "true" if administrador else "false"
        }
    
    def product_data(self):
        return {
            "nome": self.fake.word().capitalize(),
            "preco": self.fake.random_number(digits=3),
            "descricao": self.fake.sentence(),
            "quantidade": self.fake.random_number(digits=2)
        }