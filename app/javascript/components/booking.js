const bookingPrice = () => {
  const bookingTime = document.querySelector('#booking_renting_time');
  const price = document.querySelector('#day-price').innerText;
  const totalPrice = document.querySelector('#final-price');
  bookingTime.addEventListener("keyup", () => {
    const days = bookingTime.value;
    const finalPrice = days * price;
    totalPrice.innerText = finalPrice;
  })
}

export { bookingPrice }
