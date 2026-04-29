INSERT INTO permissions (name, path, method, description) VALUES
('View Audit Trail', '/Governance/auditTrail', 'GET',
'Allows access to the Audit Trail dashboard where system activities, user actions, and module changes are displayed.'),

('View Audit Reports', '/Governance/auditReports', 'GET',
'Allows access to governance audit reports summarizing system activities, compliance data, and historical logs.'),

('Manage Audit Settings', '/Governance/auditSettings', 'GET',
'Allows access to audit configuration settings including retention rules and audit visibility controls.')
ON CONFLICT (name)
DO UPDATE SET
path = EXCLUDED.path,
method = EXCLUDED.method,
description = EXCLUDED.description;