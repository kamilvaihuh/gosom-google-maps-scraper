FROM gosom/google-maps-scraper:latest  
  
# Create data directory for API storage  
RUN mkdir -p /app/data  
  
# Expose API port  
EXPOSE 8080  
  
# Set default command for API mode  
ENTRYPOINT ["google-maps-scraper", "-web", "-data-folder", "/app/data", "-addr", ":8080"]
