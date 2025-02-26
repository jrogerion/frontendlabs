# Usar a imagem oficial do Nginx
FROM nginx:latest

# Remover a configuração padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copiar os arquivos do site para dentro do container
COPY ./hello /usr/share/nginx/html

# Expor a porta 80 do container
EXPOSE 80

# Comando para iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]

