# Usando uma imagem base do Python
FROM python:3.8-slim

# Definindo o diretório de trabalho
WORKDIR /app

# Instalando dependências
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copiando o código da aplicação
COPY . .

# Comando para rodar a aplicação
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
