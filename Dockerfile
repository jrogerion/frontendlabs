# Usar a imagem oficial do Nginx
FROM nginx:latest

# Remover a configuração padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copiar os arquivos do diretório frontendlabs para dentro do container
COPY . /usr/share/nginx/html

# Expor a porta 80 do container
EXPOSE 80

# Comando para iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]
