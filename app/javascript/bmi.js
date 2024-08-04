document.addEventListener('DOMContentLoaded', () => {
  function calculateBMI() {
    // フォームから身長と体重を取得
    const heightInput = document.getElementById('height');
    const weightInput = document.getElementById('weight');
    const resultSpan = document.getElementById('bmi-result');

    // 身長と体重の値を取得
    const height = parseFloat(heightInput.value);
    const weight = parseFloat(weightInput.value);
    
    // 入力の検証
    if (isNaN(height) || isNaN(weight) || height <= 0 || weight <= 0) {
      resultSpan.innerHTML = "<span class='error-message'>正しい身長と体重を入力してください。</span>";
      return;
    }

    // 身長をメートルに変換し、BMIを計算
    const heightInMeters = height / 100;
    const bmi = weight / (heightInMeters ** 2);
    resultSpan.innerHTML = `<b>${bmi.toFixed(2)}</b>`;
  }

  // ボタンにクリックイベントを設定
  const calculateButton = document.querySelector('.calculate-btn');
  if (calculateButton) {
    calculateButton.addEventListener('click', calculateBMI);
  } else {
    console.error('BMI計算ボタンが見つかりません。');
  }
});
