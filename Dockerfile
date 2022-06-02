FROM arata74/mirrorhunter:latest
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
COPY hunter-req.txt .
RUN pip3 install --no-cache-dir -r hunter-req.txt
COPY . .
CMD ["bash", "start.sh"]
