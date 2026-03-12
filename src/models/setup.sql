-- ========================================
-- Organization Table
-- ========================================
CREATE TABLE organization (
    organization_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    contact_email VARCHAR(255) NOT NULL,
    logo_filename VARCHAR(255) NOT NULL
);
INSERT INTO organization (name, description, contact_email, logo_filename)
VALUES
('BrightFuture Builders',
'A nonprofit focused on improving community infrastructure through sustainable construction projects.',
'info@brightfuturebuilders.org',
'brightfuture-logo.png'),

('GreenHarvest Growers',
'An urban farming collective promoting food sustainability and education in local neighborhoods.',
'contact@greenharvest.org',
'greenharvest-logo.png'),

('UnityServe Volunteers',
'A volunteer coordination group supporting local charities and service initiatives.',
'hello@unityserve.org',
'unityserve-logo.png');
SELECT * FROM organization;

-- ========================================
-- Organization Table
-- ========================================
CREATE TABLE organization (
    organization_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    contact_email VARCHAR(255) NOT NULL,
    logo_filename VARCHAR(255) NOT NULL
);

-- ========================================
-- Insert sample data
-- ========================================
INSERT INTO organization (name, description, contact_email, logo_filename)
VALUES
('BrightFuture Builders','A nonprofit focused on improving community infrastructure through sustainable construction projects.','info@brightfuturebuilders.org','brightfuture-logo.png'),
('GreenHarvest Growers','An urban farming collective promoting food sustainability and education in local neighborhoods.','contact@greenharvest.org','greenharvest-logo.png'),
('UnityServe Volunteers','A volunteer coordination group supporting local charities and service initiatives.','hello@unityserve.org','unityserve-logo.png');
-- ========================================
-- Project Table
-- ========================================
CREATE TABLE project (
    project_id SERIAL PRIMARY KEY,
    organization_id INTEGER REFERENCES organization(organization_id),
    title VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    location VARCHAR(255) NOT NULL,
    date DATE NOT NULL
);
-- ========================================
-- Insert sample data: Projects
-- ========================================
INSERT INTO project (organization_id, title, description, location, date)
VALUES
(1, 'Build Community Park', 'Constructing a new park for the neighborhood.', 'Nairobi', '2026-04-10'),
(1, 'Renovate School', 'Painting and repairing classrooms.', 'Mombasa', '2026-04-15'),
(1, 'Install Playground Equipment', 'Adding swings and slides for kids.', 'Nairobi', '2026-04-20'),
(1, 'Community Clean-up', 'Cleaning streets and public areas.', 'Nairobi', '2026-04-25'),
(1, 'Water Well Project', 'Drilling water wells for the village.', 'Kisumu', '2026-05-01'),

(2, 'Urban Farm Workshop', 'Teach urban farming techniques.', 'Kisumu', '2026-05-01'),
(2, 'Community Garden', 'Set up a local garden for families.', 'Nairobi', '2026-05-05'),
(2, 'Compost Training', 'Train locals on composting methods.', 'Mombasa', '2026-05-10'),
(2, 'Seed Donation Drive', 'Provide seeds for urban farming.', 'Kisumu', '2026-05-15'),
(2, 'Hydroponics Setup', 'Install hydroponics systems for schools.', 'Nairobi', '2026-05-20'),

(3, 'Charity Drive', 'Collecting food for families in need.', 'Nakuru', '2026-05-10'),
(3, 'Volunteer Orientation', 'Train volunteers for local projects.', 'Mombasa', '2026-05-15'),
(3, 'Clothing Donation', 'Collect and distribute clothes to those in need.', 'Nairobi', '2026-05-20'),
(3, 'Fundraising Event', 'Organize charity fundraising events.', 'Kisumu', '2026-05-25'),
(3, 'Health Camp', 'Provide basic medical check-ups.', 'Nakuru', '2026-05-30');