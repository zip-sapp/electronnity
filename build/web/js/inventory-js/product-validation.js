const addButton = document.getElementById('add');

addButton.addEventListener('click', validateForm);

function validateForm(event) {
    event.preventDefault();
    event.stopPropagation();

    const productid = document.getElementById('productid').value.trim();
    const productname = document.getElementById('productname').value.trim();
    const description = document.getElementById('description').value.trim();
    const size = document.getElementById('size').value.trim();
    const price = document.getElementById('price').value.trim();
    const quantity = document.getElementById('quantity').value.trim();

    let errorMessage = '';

    if (productid === '') {
        errorMessage += 'Product ID is required\n';
    }

    if (productname === '') {
        errorMessage += 'Product name is required\n';
    }

    if (description === '') {
        errorMessage += 'Description is required\n';
    }

    if (size === '') {
        errorMessage += 'Size is required\n';
    }

    if (price === '' || !/^\d+(\.\d+)?$/.test(price)) {
        errorMessage += 'Price is required and must be a valid number\n';
    }

    if (quantity === '' || !/^\d+$/.test(quantity)) {
        errorMessage += 'Quantity is required and must be a whole number\n';
    }

    if (errorMessage !== '') {
        alert(errorMessage);
    } else {
        alert('Form is valid! Submitting...');
        document.getElementById('form').submit();
    }
}