document.addEventListener("DOMContentLoaded", function() {
    // Selectors
    const shoppingCartModal = document.querySelector('#shoppingCartModal');
    const productsCartContent = document.querySelector('.products-cart-content');
    const subtotalElement = document.querySelector('.subtotal');
    const checkoutForm = document.querySelector('#checkout-form');
    const cartItemsInput = document.querySelector('#cartItemsInput');
    const checkoutButton = document.querySelector('.checkout-button');

    // Cart items array
    let cartItems = [];

    // Load cart items from sessionStorage
    if (sessionStorage.getItem('cartItems')) {
        cartItems = JSON.parse(sessionStorage.getItem('cartItems'));
        updateShoppingCartModal();
    }

    // Add event listeners to all add to cart buttons
    document.querySelectorAll('.add-to-cart-btn').forEach(button => {
        button.addEventListener('click', (e) => {
            e.preventDefault();

            // Get product details
            const productElement = button.closest('.products-size-wrapper');
            const productID = productElement.getAttribute('data-product-id');
            const productTitle = productElement.getAttribute('data-product-name');
            const productPrice = productElement.getAttribute('data-product-price');
            const productImage = productElement.getAttribute('data-product-image');

            // Check if product is already in cart
            const existingCartItem = cartItems.find((cartItem) => cartItem.id === productID);

            if (existingCartItem) {
                // Increment quantity if product is already in cart
                existingCartItem.quantity++;
            } else {
                // Create new cart item object
                const cartItem = {
                    id: productID,
                    title: productTitle,
                    price: productPrice,
                    image: productImage,
                    quantity: 1
                };
                cartItems.push(cartItem);
            }

            // Store cart items in sessionStorage
            sessionStorage.setItem('cartItems', JSON.stringify(cartItems));

            // Update shopping cart modal content
            updateShoppingCartModal();

            // Show shopping cart modal
            var myModal = new bootstrap.Modal(document.getElementById('shoppingCartModal'), {});
            myModal.show();
        });
    });

    // Function to update shopping cart modal content
    function updateShoppingCartModal() {
        // Clear products cart content element
        productsCartContent.innerHTML = '';

        // Loop through cart items array
        cartItems.forEach((cartItem, index) => {
            // Create new cart item element
            const cartItemElement = document.createElement('div');
            cartItemElement.className = 'cart-item';

            // Add cart item details to element
            cartItemElement.innerHTML = `
                <div class="products-cart">
                    <div class="products-image">
                        <img src="${cartItem.image}" alt="image">
                    </div>

                    <div class="products-content">
                        <h3>${cartItem.title}</h3>
                        <div class="products-price">
                            <p>Quantity: <input type="number" value="${cartItem.quantity}" min="1" data-index="${index}"></p>
                            <p>Price: ${cartItem.price}</p>
                        </div>
                        <button class="remove-cart-item" data-index="${index}">Remove</button>
                    </div>
                </div>
            `;

            // Add cart item element to products cart content element
            productsCartContent.appendChild(cartItemElement);
        });

        // Update subtotal
        const subtotal = cartItems.reduce((acc, cartItem) => acc + Number(cartItem.price.replace('₱', '')) * cartItem.quantity, 0);
        subtotalElement.textContent = `₱${subtotal.toFixed(2)}`;
    }

    // Add event listener to productsCartContent for delegation
    productsCartContent.addEventListener('click', (e) => {
        if (e.target.classList.contains('remove-cart-item')) {
            const index = e.target.dataset.index;
            cartItems.splice(index, 1);
            sessionStorage.setItem('cartItems', JSON.stringify(cartItems)); // Update sessionStorage
            updateShoppingCartModal();
        }
    });

    // Add event listener to quantity input fields for delegation
    productsCartContent.addEventListener('input', (e) => {
        if (e.target.tagName === 'INPUT' && e.target.type === 'number') {
            const index = e.target.dataset.index;
            const newQuantity = parseInt(e.target.value, 10);
            if (newQuantity > 0) {
                cartItems[index].quantity = newQuantity;
                sessionStorage.setItem('cartItems', JSON.stringify(cartItems)); // Update sessionStorage
                updateShoppingCartModal();
            }
        }
    });

    // Add event listener to checkout form
    checkoutForm.addEventListener('submit', (e) => {
        e.preventDefault(); // Prevent the default form submission

        // Check if the cart is empty
        if (cartItems.length === 0) {
            alert('Your cart is empty. Please add items to the cart before checking out.');
            return;
        }

        // Prepare cart items as a JSON string
        cartItemsInput.value = JSON.stringify(cartItems);

        // Now submit the form
        fetch(checkoutForm.action, {
            method: checkoutForm.method,
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            body: new URLSearchParams(new FormData(checkoutForm))
        })
        .then(response => {
            if (response.redirected) {
                // Clear the cart
                sessionStorage.removeItem('cartItems');
                cartItems.length = 0;
                updateShoppingCartModal();
                // Redirect to the success page
                window.location.href = response.url;
            } else {
                return response.text().then(text => {
                    alert('Error processing order: ' + text);
                });
            }
        })
        .catch(error => {
            console.error('Error:', error);
            alert('Error processing order');
        });
    });

    // Function to close the modal
    function closeModal() {
        var myModal = bootstrap.Modal.getInstance(document.getElementById('shoppingCartModal'));
        myModal.hide();
    }

    // Add event listener to close button
    document.querySelector('.close').addEventListener('click', closeModal);
});
