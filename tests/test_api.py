import pytest
from app import app, products

def test_get_products():
    response = app.test_client().get('/')
    assert response.status_code == 200
    data = response.json
