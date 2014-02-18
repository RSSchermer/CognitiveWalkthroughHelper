# Seed admin.
User.find_or_create_by_email('admin@cwh.com',
  password: 'cwhadmin'
)
