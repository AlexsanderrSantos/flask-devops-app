#Usa imagem oficial do python 3.10 slim(estável e leve)
FROM python:3.10-slim

#Define a pasta de trabalho dentro do container
WORKDIR /app

#Copia Todos os Arquivos do projeto pro container
COPY . .

# Instala as dependências com base no arquivo requirements
RUN pip install --no-cache-dir -r requirement.txt

#Expõe a porta usada pelo Flask
EXPOSE 5000

#Comando final: Iniciar o app
CMD ["python", "app.py"]