// Import required modules
const express = require('express');
const bodyParser = require('body-parser');
const { MongoClient } = require('mongodb');

// Initialize Express app
const app = express();
const port = 3000;

// Middleware to parse incoming request bodies
app.use(bodyParser.urlencoded({ extended: true }));

// MongoDB connection URL
const mongoUrl = 'mongodb+srv://mhartnett:****@statesnbs.7vvgsot.mongodb.net/';
const dbName = 'CSCI8876';

// Connect to MongoDB
MongoClient.connect(mongoUrl, (err, client) => {
    if (err) return console.error(err);
    console.log('Connected to MongoDB');

    const db = client.db(dbName);

    // Define route to handle user input
    app.post('/query', (req, res) => {
        const userInput = req.body.input;

        // Perform database operation
        db.collection('mycollection').findOne({ /* Your query using userInput */ }, (err, result) => {
            if (err) {
                console.error(err);
                res.status(500).send('Error querying database');
            } else {
                res.json(result);
            }
        });
    });

    // Start the server
    app.listen(port, () => {
        console.log(`Server is running on http://localhost:${port}`);
    });
});

