/* -------------------------------- */
/* -------------------------------- */
/* GET DATA FROM API AND DISPLAY IT */
/* -------------------------------- */
/* -------------------------------- */
fetch("api/", { method: "GET" })
    // Get Data From API
    .then(response => response.json())
    .then(result => {
        // Display Data Inside The Table
        result.forEach(data => {
            document.querySelector(".table-group-divider").innerHTML += `
                <tr>
                    <th class="id">` + data.id + `</th>
                    <td data-cell="fruit" data-id="` + data.id + `">` + data.fruit + `</td>
                    <td data-cell="calories" data-id="` + data.id + `">` + data.calories + `</td>
                    <td data-cell="fat" data-id="` + data.id + `">` + data.fat + `</td>
                    <td data-cell="protein" data-id="` + data.id + `">` + data.protein + `</td>
                    <td data-cell="carbohydrate" data-id="` + data.id + `">` + data.carbohydrate + `</td>
                </tr>
            `;
        });
    })
    .catch(error => console.log("error", error));






/* -------------------------------- */
/* -------------------------------- */
/* EDIT (UPDATE) CELLS IN REAL-TIME */
/* -------------------------------- */
/* -------------------------------- */
setTimeout(function () {
    // Get All Cells
    const all_cells = document.querySelectorAll("td");

    // Actions For All Of The Cells
    all_cells.forEach(cell => {
        // When User Clicks On Every Cells
        cell.onclick = function () {
            // Convert Cells To Editable Mode
            cell.contentEditable = "true";
            // Every Change In A Cell
            cell.oninput = function () {

                // Get Required Data From HTML DOM
                const target_id = parseInt(cell.getAttribute("data-id"));
                const target_cell = cell.getAttribute("data-cell");
                const target_new_data = (cell.innerText);

                // Set Headers
                const my_headers = new Headers();
                my_headers.append("Content-Type", "application/json");

                // Set Data For Sending To API
                const raw_data = JSON.stringify({
                    "target_id": target_id,
                    "target_cell": target_cell,
                    "target_new_data": target_new_data
                });

                // Set Request Options
                const request_options = {
                    method: "POST",
                    headers: my_headers,
                    body: raw_data,
                    redirect: "follow"
                };

                // Send Data To API
                fetch("api/", request_options)
                    .then(response => response.json())
                    .then(result => {
                        // Get Pop-Up Notification
                        const popup = document.querySelector("#notification");

                        // Successful Status From API
                        if (result.cell_updated == true) {
                            // Display Notification
                            popup.style.display = "block";
                            popup.setAttribute(
                                "class", "animate__animated animate__fadeInDown animate__fast"
                            );
                            // Hide Notification After 2 Seconds
                            setTimeout(function () {
                                popup.setAttribute(
                                    "class", "animate__animated animate__fadeOutLeft animate__fast"
                                );
                            }, 2000);
                        }
                    })
                    .catch(error => console.log("error", error));
            };
        };
    });
}, 1000);