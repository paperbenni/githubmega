FROM paperbenni/rclone
COPY login.sh login.sh
COPY start.sh start.sh
RUN apk add expect sed awk grep
CMD ./start.sh
