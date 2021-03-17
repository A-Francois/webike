const previewEditRide = (() => {
  const previewButton = document.getElementById("preview-button");
  const rideTitle = document.getElementById("ride_title");
  const rideCityDeparture = document.getElementById("ride_city_departure");
  const rideCityArrival = document.getElementById("ride_city_arrival");
  const rideDepartureDate = document.getElementById("ride_departure_date");
  const rideArrivalDate = document.getElementById("ride_arrival_date");
  const rideRideDescription = document.getElementById("ride_ride_description");
  if (previewButton) {
    previewButton.addEventListener('click', (event) => {
      event.preventDefault();
      document.location.href = window.location.pathname + `?title=${rideTitle.value}&city_departure=${rideCityDeparture.value}&city_arrival=${rideCityArrival.value}&departure_date=${rideDepartureDate.value}&arrival_date=${rideArrivalDate.value}&ride_description=${rideRideDescription.value}`
    })
  }
})

export { previewEditRide }