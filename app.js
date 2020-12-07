let mainContent = document.querySelector(".main-content");

if(mainContent != null) {

	mainContent.addEventListener("click", function(event){
	
		let answers = document.querySelectorAll(".answer");

		if(event.target.classList.contains("answer")) {

			for(let i = 0; i < answers.length; i++) {
				answers[i].style.backgroundColor = "white";
				answers[i].style.color = "#333";
			}

			event.target.style.backgroundColor = "black";
			event.target.style.color = "white";

		} else {
			
			let offeredAnswersCount = answers.length;
			let inputs = document.querySelectorAll("input[type='radio']");

			for(let i = 0; i < offeredAnswersCount; i++) {

				answers[i].style.backgroundColor = "white";
				answers[i].style.color = "#333";

				inputs[i].checked = false;

			}

		}

	});

}