INSERT INTO role_permissions (role_id, permission_id, organization_id)
SELECT r.id, p.id, 33
FROM roles r
JOIN permissions p ON p.name IN (
  'View Audit Trail',
  'View Audit Reports',
  'Manage Audit Settings'
)
WHERE r.name IN (
  'System Administrator',
  'Administrator',
  'SuperAdmin'
)
ON CONFLICT (role_id, permission_id) DO NOTHING;