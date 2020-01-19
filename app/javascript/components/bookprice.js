const bookPrice = () => {
  const myBox = document.querySelectorAll('.datepicker');
  const startTime = document.getElementById('booking_starts_at');
  const endTime = document.getElementById('booking_ends_at');
  const priceTag = document.getElementById('final_price');
  const hourlyRate = document.getElementById('car_price');
  myBox.forEach((thing) => {
    thing.addEventListener("input", () => {
      const startingTime = startTime.value;
      const endingTime = endTime.value;
      if (startingTime && endingTime) {
        const startHour = Date.parse(startingTime) / 3600000;
        const endHour = Date.parse(endingTime) / 3600000;
        const result = (endHour - startHour) * Number.parseInt(hourlyRate.innerText);
        priceTag.innerText = `${Math.round(result)}€`;
      }
    })
  })
}

export { bookPrice }
