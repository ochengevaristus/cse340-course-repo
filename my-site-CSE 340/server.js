import express from 'express';
import path from 'path';
import dotenv from 'dotenv';

dotenv.config();

const app = express();
const PORT = process.env.PORT || 3000;

// Set EJS as the template engine
app.set('view engine', 'ejs');
app.set('views', path.resolve('./views'));

// Serve static files
app.use(express.static('public'));

// Routes
app.get('/', (req, res) => res.render('home', { title: 'Home' }));

app.get('/organizations', (req, res) => 
  res.render('organizations', { title: 'Organizations' })
);

app.get('/projects', (req, res) => 
  res.render('projects', { title: 'Service Projects' })
);

app.get('/categories', (req, res) => {
  const categories = ['Environmental', 'Educational', 'Community Service', 'Health and Wellness'];
  res.render('categories', { title: 'Service Project Categories', categories });
});

// Start server
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));