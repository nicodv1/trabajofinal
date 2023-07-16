function pricing() {

    var category = document.getElementById("category").value
    var quantity = document.getElementById("quantity").value
    
    var general = 200
    var student = 0.8* general
    var trainee = 0.5* general
    var junior = 0.15* general

    var result

    switch (category) {
        case "general":
            result = general * quantity
            discount = 0
            break;
        case "student":
            result = (general - student) * quantity
            discount = student * quantity
            break;
        case "trainee":
            result = (general - trainee) * quantity
            discount = trainee * quantity
            break;
        case "junior":
            result = (general - junior) * quantity
            discount = junior * quantity
            break;
    }
    
    let msj = ''
    if (discount !== 0) msj = `<span class="discount">¡Ahorrás $${discount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, '.')}!</span>`

    document.getElementById("total").innerHTML = `$${result.toString().replace(/\B(?=(\d{3})+(?!\d))/g, '.')}${msj}`;

}


function reset() {
    document.getElementById("total").innerHTML = "$0";
    document.getElementById("category").value = '';
    document.getElementById("quantity").value = 1;
}

document.getElementById("resume").addEventListener("click", pricing);

document.getElementById("reset").addEventListener("click", reset);
