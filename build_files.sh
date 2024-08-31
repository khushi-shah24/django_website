# Print build start message
echo "Build start"

# Install dependencies from requirements.txt
python3.12 -m pip install -r requirements.txt

# Collect static files into the STATIC_ROOT directory
python3.12 manage.py collectstatic --noinput --clear

# Apply database migrations
python3.12 manage.py migrate

echo "Build end"
