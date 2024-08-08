document.addEventListener("turbo:load", function() {
  function calculateTargetDose() {
    var weight = parseFloat(document.getElementById("weight").value);
    var drugAmount = parseFloat(document.getElementById("drug_amount").value);
    var solutionVolume = parseFloat(document.getElementById("solution_volume").value);
    var flowRate = parseFloat(document.getElementById("flow_rate").value);

    if (isNaN(weight) || isNaN(drugAmount) || isNaN(solutionVolume) || isNaN(flowRate)) {
      alert("すべての入力を正しく入力してください。");
      return;
    }

    var targetDose = (flowRate * 100 * (drugAmount / solutionVolume)) / (6 * weight);
    document.getElementById("target_dose").innerText = targetDose.toFixed(2);
  }

  document.querySelector(".calculate-btn").addEventListener("click", function(event) {
    event.preventDefault();
    calculateTargetDose();
  });
});
