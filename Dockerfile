# Use AWS Lambda Node.js base image
FROM public.ecr.aws/lambda/nodejs:18


# Copy application files
COPY app.js package.json ./

# Install dependencies
RUN npm install

# Set the Lambda function entry point
CMD ["app.lambdaHandler"]
