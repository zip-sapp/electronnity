// Selectors
const addToCartButton = document.querySelector('.products-add-to-cart button');
const shoppingCartModal = document.querySelector('#shoppingCartModal');
const productsCartContent = document.querySelector('.products-cart-content');
const subtotalElement = document.querySelector('.subtotal');

// Cart items array
let cartItems = [];

// Load cart items from sessionStorage
if (sessionStorage.getItem('cartItems')) {
  cartItems = JSON.parse(sessionStorage.getItem('cartItems'));
  updateShoppingCartModal(); // Load cart items from sessionStorage
}

// Add event listener to the add to cart button
addToCartButton.addEventListener('click', (e) => {
  e.preventDefault();

  // Get product details
  const productTitle = document.querySelector('.products-details-desc h3').textContent;
  const productPrice = document.querySelector('.price .new-price').textContent;
  const productImage = document.querySelector('.products-details-image img').src;

  // Check if product is already in cart
  const existingCartItem = cartItems.find((cartItem) => cartItem.title === productTitle);

  if (existingCartItem) {
    // Increment quantity if product is already in cart
    existingCartItem.quantity++;
  } else {
    // Create new cart item object
    const cartItem = {
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
  shoppingCartModal.classList.add('show');
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

// Add event listener to remove cart item buttons
productsCartContent.addEventListener('click', (e) => {
  if (e.target.classList.contains('remove-cart-item')) {
    const index = e.target.dataset.index;
    cartItems.splice(index, 1);
    updateShoppingCartModal();
  }
});

// Add event listener to quantity input fields
productsCartContent.addEventListener('input', (e) => {
  if (e.target.tagName === 'INPUT' && e.target.type === 'number') {
    const index = e.target.dataset.index;
    const newQuantity = parseInt(e.target.value, 10);
    if (newQuantity > 0) {
      cartItems[index].quantity = newQuantity;
      updateShoppingCartModal();
    }
  }
});