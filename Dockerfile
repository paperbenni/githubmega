FROM paperbenni/rclone
RUN apk add expect sed grep 
COPY login.sh login.sh
COPY start.sh start.sh
RUN chmod +x start.sh login.sh

CMD ./start.sh