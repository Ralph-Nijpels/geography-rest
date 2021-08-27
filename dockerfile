FROM golang:latest

WORKDIR C:\Projects\geography\rest

# Get all file needed
COPY . .

# Create the application
# note: go manages the dependencies itself now through GO.MOD
RUN go build -o rest-api main.go

# note: here we should create a second container that only
# contains the needed executable and the options file.

# note: we don't include a command to start the application
# because that is done by the composer...
