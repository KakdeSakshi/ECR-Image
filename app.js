// app.js

exports.lambdaHandler = async (event, context) => {
    try {
        console.log("Lambda function invoked!");
        return {
            statusCode: 200,
            body: JSON.stringify({
                message: "Hello from AWS Lambda!",
            }),
        };
    } catch (error) {
        console.error(error);
        return {
            statusCode: 500,
            body: JSON.stringify({
                message: "Something went wrong!",
            }),
        };
    }
};
