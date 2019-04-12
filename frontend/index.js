document.addEventListener("DOMContentLoaded", function() {
  fetch("http://localhost:3000/api/v1/airplanes")
    .then(res => res.json())
    .then(data => renderAirplanes(data));
  sidebar();
  showAirplanes();
  addPlane();
});

function sidebar() {
  $(document).ready(function() {
    $("#sidebarCollapse").on("click", function() {
      $("#sidebar").toggleClass("active");
    });
  });
}

function renderAirplanes(data) {
  data.forEach(plane => {
    if (plane.manufacture === "Airbus") {
      const ulAirbus = document.querySelector("#homeSubmenu");
      const liAirbus = document.createElement("li");
      liAirbus.innerHTML = `<a class = "airbus-li"  href="#"
    data-id="${plane.id}"
    data-name="${plane.name}"
    data-family="${plane.family}"
    data-range="${plane.range}"
    data-typical_seating="${plane.typical_seating}"
    data-overall_length="${plane.overall_length}"
    data-height="${plane.height}"
    data-wingspan="${plane.wing_span}"
    data-imglength="${plane["img_length"]}"
    data-imgheight="${plane["img_height"]}"
    data-imgwingspan="${plane["img_wing_span"]}"

    > ${plane.name}</a>`;
      ulAirbus.appendChild(liAirbus);
    } else {
      const ulNewAirplane = document.querySelector("#newPlaneSubmenu");
      const liNewAirPlane = document.createElement("li");
      liNewAirPlane.innerHTML = `<a class = "anew-plane-li"  href="#"
          data-id="${plane.id}"
          data-name="${plane.name}"
          data-family="${plane.family}"
          data-range="${plane.range}"
          data-typical_seating="${plane.typical_seating}"
          data-overall_length="${plane.overall_length}"
          data-height="${plane.height}"
          data-wingspan="${plane.wing_span}"
          data-imglength="${plane["img_length"]}"
          data-imgheight="${plane["img_height"]}"
          data-imgwingspan="${plane["img_wing_span"]}"
          > ${plane.name}</a>`;

      ulNewAirplane.appendChild(liNewAirPlane);
    }
  });
}

function showAirplanes() {
  const ulAirbus = document.querySelector("#homeSubmenu");
  const planeList = document.querySelector(".plane-list");
  planeList.addEventListener("click", event => {
    const carousel = document.querySelector("#planeName");
    const firstSlide = document.querySelector("#first-slide");
    const secondSlide = document.querySelector("#second-slide");
    const thirdSlide = document.querySelector("#third-slide");
    if (
      event.target.classList.contains("airbus-li") ||
      event.target.classList.contains("anew-plane-li")
    ) {
      carousel.innerHTML = event.target.dataset.name;
      firstSlide.src = event.target.dataset.imglength;
      secondSlide.src = event.target.dataset.imgheight;
      thirdSlide.src = event.target.dataset.imgwingspan;
    }
  });
}

function addPlane() {
  const addPlaneBtn = document.querySelector("#addPlane");
  const addPlaneForm = document.querySelector("#addPlaneForm");
  addPlaneForm.addEventListener("submit", function(event) {
    event.preventDefault();
    const inputManufacture = addPlaneForm.querySelector("#addPlaneManufacture")
      .value;
    const inputName = addPlaneForm.querySelector("#addPlaneName").value;
    const inputFamily = addPlaneForm.querySelector("#addPlaneFamily").value;
    const inputRange = addPlaneForm.querySelector("#addPlaneRange").value;
    const inputSeating = addPlaneForm.querySelector("#addPlaneSeating").value;
    const inputLength = addPlaneForm.querySelector("#addPlaneLength").value;
    const inputHeight = addPlaneForm.querySelector("#addPlaneHeight").value;
    const inputSpan = addPlaneForm.querySelector("#addPlaneSpan").value;
    fetch("http://localhost:3000/api/v1/airplanes", {
      method: "POST",
      headers: { "Content-Type": "Application/json" },
      body: JSON.stringify({
        manufacture: inputManufacture,
        name: inputName,
        family: inputFamily,
        range: inputRange,
        typical_seating: inputSeating,
        overall_length: inputLength,
        height: inputHeight,
        wing_span: inputSpan
      })
    })
      .then(response => response.json())
      .then(data => {
        let planeArr = [];
        planeArr.push(data);
        renderAirplanes(planeArr);
      });
  });
}

function deleteAirplane() {}
